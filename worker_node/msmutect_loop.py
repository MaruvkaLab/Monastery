import os, shutil, subprocess, time, sys, requests, logging
from typing import List
from uuid import getnode as get_mac
from dataclasses import dataclass


@dataclass
class SequenceCandidate:
    bam_file: str
    bai_file: str
    locus_file: str

    def sample_id(self):
        return os.path.dirname(self.bam_file)[28:]  # len("/home/avraham/gdc_downloads/") = 28


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
            phobos_file = "/home/avraham/GRCh38.d1.vd1_1to15_repetitive_loci_sorted_fixed.phobos"
            all_files = os.listdir(child_dir_abs_path)
            for a in all_files:
                if a.endswith(".bam"):
                    bam_file = os.path.join(child_dir_abs_path, a)
                elif a.endswith(".bai"):
                    bai_file = os.path.join(child_dir_abs_path, a)
                # elif a.endswith(".phobos"):
                    # phobos_file = os.path.join(child_dir_abs_path, a)
            if bam_file and bai_file and phobos_file: # if filled, they will not be False
                time.sleep(10) # to give everything time to complete
                return SequenceCandidate(bam_file=bam_file,
                                         locus_file=phobos_file, bai_file=bai_file)
        return None

@dataclass
class BashCommand:
    command: str
    err_messg: str
    success_message: str = None


def run_bash_actions_sequentially(bash_actions: List[BashCommand]):
    FORMAT = '%(asctime)s %(message)s'
    logger = logging.getLogger(__name__)
    logging.basicConfig(filename='msmutect.log', level=logging.INFO, format=FORMAT)
    for cmd in bash_actions:
        ret = os.system(cmd.command)
        if ret != 0:
            logger.error(cmd.command + " failed with: " + cmd.err_messg)
            exit()
        else:
            if cmd.success_message is not None:
                logger.info(cmd.success_message)


def run_msmutect_on_sample(new_sample: SequenceCandidate):
    locus_file: str = new_sample.locus_file
    bam_file: str = new_sample.bam_file
    bai_file: str = new_sample.bai_file
    msmutect_path = "/home/avraham/MSMuTect_4/msmutect.sh"
    results_path="/home/avraham/results"
    # somtimes index file is older than BAM file
    os.system(f"touch {bai_file}")
    output_prefix = os.path.join(results_path, new_sample.sample_id())
    output_file = os.path.join(output_prefix+".hist.tsv")
    print(f"{output_file} will be outputted")
    samtools_idx = BashCommand(f"samtools index {bam_file}", f"failed to index {bam_file}")
    msmutect_run = BashCommand(f"{msmutect_path} -l {locus_file} -S {bam_file} -H -c 12 -O {output_prefix}",
                               f"failed msmutect run on {bam_file}",
                               f"msmutect run on {bam_file} succeeded")
    zip_run = BashCommand(f"zip -o -j {output_prefix}.zip {output_file}",
                          "zipping failed")
    copying = BashCommand(f"gsutil cp {output_prefix}.zip gs://texas-bleeding",
                          "copying failed")
    removing = BashCommand(f"rm -rf {os.path.dirname(bam_file)}",
                           "removing old files failed")
    remove_output_files = BashCommand(f"rm {output_file} {output_prefix}.zip",
                                      "removing output files failed")
    # pipeline = [samtools_idx, msmutect_run, zip_run, copying, removing, remove_output_files]
    pipeline = [msmutect_run, zip_run, copying, removing, remove_output_files]
    run_bash_actions_sequentially(pipeline)


def mark_sample_complete(sample_id: str):
    headers = {'accept': 'application/json'}
    pa = {"sample_gdc_id": sample_id}
    img_req = requests.get(url=f"http://10.128.0.2:8080/mark_sample_as_complete/", json=pa, headers=headers)
    print(img_req.content)


def msmutect_loop():
    print("began msmutect loop")
    while True:
        new_sample = discover_new_bam("/home/avraham/gdc_downloads")
        if new_sample is None:
            time.sleep(10)
            print("waiting on sample")
            continue
        else:
            print(f"running on {new_sample}")
            run_msmutect_on_sample(new_sample)
            mark_sample_complete(new_sample.sample_id())


if __name__ == '__main__':
    # a=SequenceCandidate(bam_file='/home/avraham/gdc_downloads/eb8e28e6-e3ba-45dd-ac5a-a9046ca97e65/a29c569d-702a-4d6d-98cc-10a4f0361638_wgs_gdc_realn.bam',
    #                     bai_file='/home/avraham/gdc_downloads/eb8e28e6-e3ba-45dd-ac5a-a9046ca97e65/a29c569d-702a-4d6d-98cc-10a4f0361638_wgs_gdc_realn.bai',
    #                     locus_file='/home/avraham/gdc_downloads/eb8e28e6-e3ba-45dd-ac5a-a9046ca97e65/all_loci.phobos')
    # print(a.sample_id())
    # print(discover_new_bam("/home/avraham/MaruvkaLab/Texas/tmp"))
    msmutect_loop()
