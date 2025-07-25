import os, shutil, subprocess, time, sys, requests, psutil, logging, glob
from uuid import getnode as get_mac


def wait_on_subprocess(p: subprocess.Popen) -> bool:
    while p.poll() is None:
        time.sleep(2)
    return p.poll()==0


def download_file(sample_id: str, gdc_client_path: str, gdc_token_fp: str) -> bool:
    download_command = [f"{gdc_client_path}", "download", f"{sample_id}", "-t", f"{gdc_token_fp}", "-d",
                        "/home/avraham/gdc_downloads"]
    download_subprocess = subprocess.Popen(download_command)
    download_succeeded = wait_on_subprocess(download_subprocess)
    return download_succeeded


def add_phobos_file(is_female: bool, dest_path: str):
    if is_female:
        # softlink
        os.system(f"ln -s /home/avraham/gdc_downloads/female_loci.phobos {dest_path}")
    else:
        os.system(f"ln -s /home/avraham/gdc_downloads/all_loci.phobos {dest_path}")


def add_bai_file(dest_path: str):
    # return
    if len(glob.glob(os.path.join(dest_path, "*.bai"))) > 0:
        return
    else:
        bam_file = os.path.abspath(glob.glob(os.path.join(dest_path, "*.bam"))[0])
        os.system(f"samtools index {bam_file}")


def download_process():
    FORMAT = '%(asctime)s %(message)s'
    logger = logging.getLogger(__name__)
    logging.basicConfig(filename='download.log', level=logging.INFO, format=FORMAT)
    logger.info("STARTED DOWNLOAD PROCESS")
    server_ip = "10.128.0.2"
    server_port = "8080"
    gdc_token_fp = "/home/avraham/gdc_token_27_4_25.txt"
    gdc_client_path = "/home/avraham/gdc-client"
    headers = {'accept': 'application/json'}
    mac_addr = str(get_mac())
    if not os.path.exists(gdc_token_fp) or not os.path.exists(gdc_client_path):
        raise FileNotFoundError("GDC PATHS INVALID")
    while True:
        free_disk_space = psutil.disk_usage('/').free-(12e9)

        pa = {"worker_node_id": mac_addr, "max_size": free_disk_space}
        sample_req = requests.get(url=f"http://{server_ip}:{server_port}/get_and_mark_sample/", json=pa, headers=headers)
        if len(sample_req.content.strip()) == 0:
            time.sleep(30)
            continue
        else:
            req_json = sample_req.json()
        print(req_json)
        sample_id = req_json['sample_uuid']
        is_female = bool(req_json["is_female"])
        dest_path = f"/home/avraham/gdc_downloads/{sample_id}" # fill in
        logger.info(f"STARTED DOWNLOADING {sample_id}")
        download_succeeded = download_file(sample_id, gdc_client_path, gdc_token_fp)
        if download_succeeded:
            add_bai_file(dest_path)
            # add_phobos_file(is_female, dest_path)
            logger.info(f"DOWNLOAD {sample_id} succesfully")
        else:
            for i in range(10):
                logger.error(f"FAILED DOWNLOAD {sample_id}. TRYING AGAIN")
                download_succeeded = download_file(sample_id, gdc_client_path, gdc_token_fp)
                if download_succeeded:
                    add_bai_file(dest_path)
                    # add_phobos_file(is_female, dest_path)
                    logger.info(f"DOWNLOAD {sample_id} succesfully")
                    break
                else:
                    time.sleep(30) # give time... idk

            if not download_succeeded:
                logger.error(f"FAILED DOWNLOAD {sample_id} FOR ELEVENTH TIME. EXITING")
        # handle failure


def main():
    download_process()


if __name__ == '__main__':
    main()
