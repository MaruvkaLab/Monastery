import os, shutil, subprocess, time, sys, requests, psutil, logging
from uuid import getnode as get_mac
from dataclasses import dataclass


@dataclass
class SequenceCandidate:
    bam_file: str
    locus_file: str


def immediate_child_dirs(fp: str):
    return [a for a in os.listdir(fp) if os.path.isdir(os.path.join(fp, a)) and not a=="tmp"]


def discover_new_bam(gdc_download_path: str) -> SequenceCandidate:
    child_dirs = immediate_child_dirs(gdc_download_path)
    if len(child_dirs)==0:
        return None
    else:
        for child in child_dirs:
            child_dir_abs_path = os.path.join(gdc_download_path, child)
            bam_file = False
            bai_file = False
            phobos_file = False
            all_files = os.listdir(child_dir_abs_path)
            for a in all_files:
                if a.endswith(".bam"):
                    bam_file = os.path.join(child_dir_abs_path, a)
                elif a.endswith(".bai"):
                    bai_file = os.path.join(child_dir_abs_path, a)
                elif a.endswith(".phobos"):
                    phobos_file = os.path.join(child_dir_abs_path, a)
            if bam_file and bai_file: # if filled, they will not be False
                return SequenceCandidate(bam_file=bam_file, locus_file=phobos_file)
        return None


def run_msmutect_on_sample(locus_file: str, bam_file: str):
    FORMAT = '%(asctime)s %(message)s'
    logger = logging.getLogger(__name__)
    logging.basicConfig(filename='msmutect.log', level=logging.INFO, format=FORMAT)
    msmutect_path = "/home/avraham/MSMuTect_0.5/msmutect.sh"
    msmutect_run = os.system(f"{msmutect_path} -l {locus_file} -S {bam_file} -H -c 2")
    if msmutect_run==0:
        shutil.rmtree(os.path.dirname(bam_file))
        logger.info(f"RAN {bam_file} succesfully")
    else:
        logger.error(f"FAILED RUN {bam_file}")
        exit()


def msmutect_loop():
    while True:
        new_bam = discover_new_bam("/home/avraham/gdc_downloads")
        if new_bam is None:
            time.sleep(10)
            continue
        else:
            print(f"running on {new_bam}")
            run_msmutect_on_sample(new_bam.locus_file, new_bam.bam_file)


if __name__ == '__main__':
    # print(discover_new_bam("/home/avraham/MaruvkaLab/Texas/tmp"))
    msmutect_loop()
