import os, shutil, subprocess, time, sys, requests, psutil, logging
from uuid import getnode as get_mac


def run_msmutect_on_sample():
    pass


def wait_on_subprocess(p: subprocess.Popen):
    while p.poll() is None:
        time.sleep(2)


def msmutect_loop():
    pass


def download_process():
    logger = logging.getLogger(__name__)
    logging.basicConfig(filename='download.log', level=logging.INFO)
    logger.info("STARTED DOWNLOAD PROCESS")
    server_ip = ""
    server_port = "8080"
    gdc_token_fp = ""
    gdc_client_path = ""
    headers = {'accept': 'application/json'}
    mac_addr = str(get_mac())
    if not os.path.exists(gdc_token_fp) or not os.path.exists(gdc_client_path):
        raise FileNotFoundError("GDC PATHS INVALID")
    while True:
        free_disk_space = psutil.disk_usage('/').free-(50*(1e9))

        pa = {"worker_node_id": mac_addr, "max_size": free_disk_space}
        sample_req = requests.get(url=f"http://{server_ip}:{server_port}/get_and_mark_sample/", json=pa, headers=headers)
        req_json = sample_req.json()
        sample_id = req_json['sample_uuid']
        is_female = bool(req_json["is_female"])
        dest_path = "" # fill in
        if is_female:
            # softlink
            os.system(f"ln -s /home/avraham/female_loci {dest_path}")
        else:
            os.system(f"ln -s /home/avraham/all_loci {dest_path}")
        download_command = f"{gdc_client_path} download {sample_id} -t {gdc_token_fp}"
        download_subprocess = subprocess.Popen(download_command)
        wait_on_subprocess(download_subprocess)
        # handle failure


def main():
    if sys.argv[1] == "DOWNLOAD":
        download_process()
    else:
        msmutect_loop()




