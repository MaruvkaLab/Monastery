import os, shutil, subprocess, time


def download_sample():
    # use shutil + gdc cmd tool to download sample
    pass


def run_msmutect_on_sample():
    pass


def wait_on_subprocess(p: subprocess.Popen):
    while p.poll() is None:
        time.sleep(2)


def main():
    gdc_token_fp = ""
    if not os.path.exists(gdc_token_fp):
        raise FileNotFoundError("GDC TOKEN INVALID")
    download_command = ""

    download_process = subprocess.Popen(download_command)
    while True:
        wait_on_subprocess(download_process)
        run_msmutect_on_sample()
        download_process = subprocess.Popen(download_command)



