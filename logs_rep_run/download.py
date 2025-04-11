import os, shutil, subprocess, time, requests, logging, glob
from typing import List
from uuid import getnode as get_mac


def wait_on_subprocesses(ps: List[subprocess.Popen]) -> bool:
    # returns if they both succeeded
    ready=False
    while not ready:
        ready=True
        for p in ps:
            if p.poll() is None:
                time.sleep(5)
                ready=False

    print(ps[0].poll())
    print(ps[1].poll())
    return sum([p.poll()==0 for p in ps])==len(ps) # all processes succeeded



def download_files(tumor_gdc: str, normal_gdc: str, gdc_client_path: str, gdc_token_fp: str, dest_path: str) -> bool:
    tumor_download_command = [f"{gdc_client_path}", "download", f"{tumor_gdc}", "-t", f"{gdc_token_fp}", "-d",
                               dest_path]
    normal_download_command = [f"{gdc_client_path}", "download", f"{normal_gdc}", "-t", f"{gdc_token_fp}", "-d",
                        dest_path]
    tumor_download_sub = subprocess.Popen(tumor_download_command)
    normal_download_sub = subprocess.Popen(normal_download_command)
    downloaded = wait_on_subprocesses([tumor_download_sub, normal_download_sub])
    return downloaded


def add_bai_file(dest_path: str):
    if len(glob.glob(os.path.join(dest_path, "*.bai"))) > 0:
        return
    else:
        bam_file = os.path.abspath(glob.glob(os.path.join(dest_path, "*.bam"))[0])
        os.system(f"samtools index {bam_file}")



def original_bam_in_directory(directory: str):
    all_f = os.listdir(directory)
    all_bams = [b for b in all_f if b.endswith(".bam")]
    all_split_names = [f'chr{i}.bam' for i in range(1, 23)]+["chrX.bam", "chrY.bam", "chrM.bam"]
    for b in all_bams:
        if b not in all_split_names:
            return True
    return False

def parent_dir(pth: str):
    if pth[-1]==os.path.sep:
        return os.path.dirname(pth[:-1])
    else:
        return os.path.dirname(pth)

def post_process_download_files(tumor_dir: str, normal_dir: str):
    add_bai_file(tumor_dir)
    add_bai_file(normal_dir)
    shutil.move(tumor_dir, os.path.join(parent_dir(tumor_dir), "tumor"))
    shutil.move(normal_dir, os.path.join(parent_dir(normal_dir), "normal"))

def original_bam_in_sample_dir(sample_dir):
    for f in os.listdir(sample_dir):
        if f.endswith('.bam') and 'tumor' not in f.lower():
            return True
    return False


def download_process():
    FORMAT = '%(asctime)s %(message)s'
    logger = logging.getLogger(__name__)
    logging.basicConfig(filename='download.log', level=logging.INFO, format=FORMAT)
    logger.info("STARTED DOWNLOAD PROCESS")
    server_ip = "10.128.0.20"
    server_port = "8080"
    gdc_token_fp = "/home/avraham/gdc_token.txt"
    gdc_client_path = "/home/avraham/slimeball/tools/gdc-client"
    sample_dir = "/home/avraham/samples"

    headers = {'accept': 'application/json'}
    mac_addr = str(get_mac())
    if not os.path.exists(gdc_token_fp) or not os.path.exists(gdc_client_path):
        raise FileNotFoundError("GDC PATHS INVALID")

    maximal_size = shutil.disk_usage("/").total//2 - 10e9 # anything must be under half the space on the disk
    while True:
        if len(os.listdir(sample_dir)) > 0: # already has files. check if we should continue
            for patient_dir in os.listdir(sample_dir):
            # patient_dir = os.listdir(sample_dir)[0]
            # if original_bam_in_directory(os.path.join(sample_dir, patient_dir, "tumor"))
            # os.path.join(sample_dir, patient_dir, "tumor"):
                while original_bam_in_sample_dir(os.path.join(sample_dir, patient_dir, "tumor")):
                    print("waiting: old bam still there ")
                    time.sleep(15)

        free_disk_space = min(shutil.disk_usage("/").total - 10e9, maximal_size)  # anything must be under half the space on the disk

        pa = {"worker_node_id": mac_addr, "max_size": free_disk_space}
        sample_req = requests.get(url=f"http://{server_ip}:{server_port}/get_and_mark_sample/", json=pa, headers=headers)
        print(sample_req.content.strip())
        print(free_disk_space)
        if len(sample_req.content.strip()) == 0: # no good file
            time.sleep(30) # maybe the pipeline will finish and delete what remains
            continue
        else:
            req_json = sample_req.json()

        print(req_json)
        patient_id = req_json['patient_id']
        tumor_gdc = req_json["tumor_gdc_sample_id"]
        normal_gdc = req_json["normal_gdc_sample_id"]

        logger.info(f"STARTED DOWNLOADING {patient_id}")
        current_patient_dir = os.path.join(sample_dir, patient_id)
        os.mkdir(current_patient_dir)
        tumor_dir = os.path.join(current_patient_dir, tumor_gdc)
        normal_dir = os.path.join(current_patient_dir, normal_gdc)

        download_succeeded = download_files(tumor_gdc, normal_gdc, gdc_client_path, gdc_token_fp, current_patient_dir)

        if download_succeeded:
            post_process_download_files(tumor_dir, normal_dir)
            logger.info(f"DOWNLOAD {patient_id} succesfully")
        else:
            for i in range(10):
                logger.error(f"FAILED DOWNLOAD {patient_id}. TRYING AGAIN")
                download_succeeded = download_files(tumor_gdc, normal_gdc, gdc_client_path, gdc_token_fp, current_patient_dir)

                if download_succeeded:
                    post_process_download_files(tumor_dir, normal_dir)
                    logger.info(f"DOWNLOAD {patient_id} succesfully")
                    break
                else:
                    time.sleep(30) # give time... idk

            if not download_succeeded:
                logger.error(f"FAILED DOWNLOAD {patient_id} FOR ELEVENTH TIME. EXITING")
                exit()
        # handle failure


def main():
    download_process()


if __name__ == '__main__':
    main()
