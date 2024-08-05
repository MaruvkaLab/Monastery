import os, shutil


def download_sample():
    # use shutil + gdc cmd tool to download sample
    pass


def main():
    gdc_token_fp = ""
    if not os.path.exists(gdc_token_fp):
        raise FileNotFoundError("GDC TOKEN INVALID")


