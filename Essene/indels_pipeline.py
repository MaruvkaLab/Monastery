import os, time
import multiprocessing as mp
import shutil
import subprocess
from typing import Tuple, List
from dataclasses import dataclass
from datetime import datetime

import warnings


@dataclass
class Sample:
    sample_dir: str
    tumor_dir: str
    normal_dir: str
    tumor_filename: str
    normal_filename: str

    @property
    def tumor_fp(self):
        return os.path.join(self.tumor_dir, self.tumor_filename)

    @property
    def normal_fp(self):
        return os.path.join(self.normal_dir, self.normal_filename)

    @property
    def name(self):
        return os.path.basename(self.sample_dir)


def ensure_bai_exists(bam_path):
    if not os.path.exists(bam_path+".bai") and not os.path.exists(bam_path[:-4]+".bai"):
        os.system(f"samtools index {bam_path}")

def obtain_sample(samps_dir) -> Sample:
    """
    :return: sample info for current sample. None if none are available
    """
    samples = os.listdir(samps_dir)
    if len(samples)==0:
        return None
    else:
        current_samp = samples[0]
        tumor_dir = os.path.join(samps_dir, current_samp, "tumor")
        normal_dir = os.path.join(samps_dir, current_samp, "normal")
        if os.path.exists(tumor_dir) and os.path.exists(normal_dir):
            tumor_fn = [f for f in os.listdir(tumor_dir) if f.endswith('.bam')][0]
            normal_fn = [f for f in os.listdir(normal_dir) if f.endswith('.bam')][0]
            ret = Sample(os.path.join(samps_dir, current_samp), tumor_dir, normal_dir, tumor_fn, normal_fn)
            ensure_bai_exists(ret.tumor_fp)
            ensure_bai_exists(ret.normal_fp)
            return ret
        else:
            return None  # download is still in progress


def run_strelka(patient: Sample, num_cpus: int, results_dir: str, slimeball_dir: str):
    """
    :param patient: sample to run on
    :param num_cpus: number of cpus to run strelka on
    :param results_dir: output directory
    :return: None
    """
    pipeline_config_step_cmd = f"python2 {slimeball_dir}/tools/strelka-2.9.10.centos6_x86_64/bin/configureStrelkaSomaticWorkflow.py \
    --normalBam {patient.normal_fp} \
    --tumorBam {patient.tumor_fp} \
    --referenceFasta  {slimeball_dir}/data/GRCh38.d1.vd1.fa \
    --callRegions {slimeball_dir}/data/GRCh38_chromosomes.bed.bgzf \
    --runDir {results_dir}"
    pipeline_run_step = f"python2 {os.path.join(results_dir, 'runWorkflow.py')} -m local -j {num_cpus}"
    subprocess.run(pipeline_config_step_cmd, check=True, shell=True)
    subprocess.run(pipeline_run_step, check=True, shell=True)
    # parent_process = psutil.Process()
    # while len(parent_process.children(recursive=True)):
    #     croc=1
    # croc=1

def formatted_datetime():
    current_datetime = datetime.now()
    formatted_datetime = current_datetime.strftime("%H:%M:%S")
    return formatted_datetime

def run_as_pool(cmds: List[str], cores: int, resilient: bool = False):
    # for c in cmds:
    #     print(c)
    # print("****************************")
    # return
    results = []
    cmds = [command.split(" ") for command in cmds]
    for command in cmds:
        num_active_processes = sum([1 for p in results if p.poll() is None]) # how many processes are actually running
        while num_active_processes == cores:
            time.sleep(1)  # long wait time to avoid wasting processing power
            num_active_processes = sum([1 for p in results if p.poll() is None])
        results.append(subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE))
        print(formatted_datetime() + ": " + " ".join(command))

    while sum([1 for p in results if p.poll() is None])>0: # join the processes
        time.sleep(2)

    num_failed_processes  = sum([p.poll() for p in results])
    if num_failed_processes==0: # all processes succeeded
        return 0
    else:
        failures = []
        for p in results:
            if p.poll() != 0:
                stdout, stderr = p.communicate()
                failures.append(f"stdout: {stdout.decode('ascii')}, stderr: {stderr.decode('ascii')}")
        failures_str = '\n'.join(failures)
        if resilient:
            warnings.warn(f"{cmds} failed\n{num_failed_processes} failed\n{failures_str}")
        else:
            raise RuntimeError(f"{cmds} failed\n{num_failed_processes} failed\n{failures_str}")

def chrom_names():
    return ["chr" + str(i) for i in range(1, 23)] + ["chrX", "chrY", "chrM"]


def split_commands(input_bam: str, results_dir: str, split_cmd: bool, tumor: bool) -> List[str]:
    # either split (split_cmd=true) or index (split_cmd=false)
    cmds = []
    if tumor:
        additional_specification = "tumor"
    else:
        additional_specification = "normal"
    chrs = chrom_names()
    for chrom in chrs:
        output_fp = os.path.join(results_dir, chrom+f'_{additional_specification}.bam')
        if split_cmd:
            cmds.append(f"samtools view -b -h -F 1024 {input_bam} {chrom} -o {output_fp}")
        else:
            cmds.append(f"samtools index {output_fp}")
    return cmds



def split_bam_files(patient: Sample, num_cpus: int):
    tumor_split_cmds = split_commands(patient.tumor_fp, patient.tumor_dir, split_cmd=True, tumor=True)
    normal_split_cmds = split_commands(patient.normal_fp, patient.normal_dir, split_cmd=True, tumor=False)
    all_split_cmds = tumor_split_cmds+normal_split_cmds
    run_as_pool(all_split_cmds, num_cpus)

    tumor_index_cmds = split_commands(patient.tumor_fp, patient.tumor_dir, split_cmd=False, tumor=True)
    normal_idx_cmds = split_commands(patient.normal_fp, patient.normal_dir, split_cmd=False, tumor=False)
    all_idx_cmds = tumor_index_cmds + normal_idx_cmds
    run_as_pool(all_idx_cmds, num_cpus)



def run_per_contig_pipeline(sample: Sample, num_cpus: int, results_dir: str, slimeball_dir: str):
    current_dir = os.path.dirname(__file__)
    contest_script = os.path.join(current_dir, "run_contest.sh")
    contest_cmds = [f"bash {contest_script} {chrom} {results_dir} {sample.name} {slimeball_dir} {sample.sample_dir}" for chrom in
            chrom_names()]
    run_as_pool(contest_cmds, num_cpus//3)

    memheavy_script = os.path.join(current_dir, "run_on_contig_memheavy.sh")
    cmds = [f"bash {memheavy_script} {chrom} {results_dir} {sample.name} {slimeball_dir} {sample.sample_dir}" for chrom in
            chrom_names()]
    run_as_pool(cmds, num_cpus//2)

    contig_script = os.path.join(current_dir, "run_on_contig.sh")
    cmds = [f"bash {contig_script} {chrom} {results_dir} {sample.name} {slimeball_dir} {sample.sample_dir}" for chrom in chrom_names()]
    run_as_pool(cmds, num_cpus)


def run_msmutect(slimeball:str, tumor_file: str, normal_file: str, num_cpus: int, results_dir: str):
    locus_file = os.path.join(slimeball, "data", "hg38_1to15_all_perf_sorted.phobos")
    msmutect_path = os.path.join(slimeball, "tools", "msmutect_x86_64", "msmutect")
    msmutect_path = os.path.join(slimeball, "tools", "msmutect_x86_64", "msmutect")
    # somtimes index file is older than BAM file
    output_prefix = os.path.join(results_dir, "MSMuTect_results")
    msmutect_run = f"{msmutect_path} -l {locus_file} -T {tumor_file} -N {normal_file} -c {num_cpus} -O {output_prefix} -m -A -H --integer"
    run_as_pool([msmutect_run], 1) # num cores is not set here


def main(results_dir, samps_dir, slimeball):
    if slimeball[-1]==os.path.sep:
        slimeball=slimeball[:-1]
    num_cpus = 16
    while True:
        sample = obtain_sample(samps_dir)
        # sample = Sample("/home/avraham/samples/TCGA-AD-6548",
        #                 "/home/avraham/samples/TCGA-AD-6548/tumor",
        #                 "/home/avraham/samples/TCGA-AD-6548/normal",
        #                 "TCGA-AD-6548-01A-11D-A91X-36.WholeGenome.RP-1657.bam",
        #                 "TCGA-AD-6548-10A-01D-A91X-36.WholeGenome.RP-1657.bam")
        # sample = Sample("/home/avraham/MaruvkaLab/Texas/gdc/croc_trap/samp1",
        #                 "/home/avraham/MaruvkaLab/Texas/gdc/croc_trap/samp1/tumor",
        #                 "/home/avraham/MaruvkaLab/Texas/gdc/croc_trap/samp1/normal",
        #                 "02ca2f53-bd02-4e48-98be-aa09e69299ac_wgs_gdc_realn.bam",
        #                 "normal_5df6c9bb-e65d-44b5-a4df-342983a88c47_wgs_gdc_realn.bam")

        if sample is None:
            print("waiting for sample")
            time.sleep(10)
            continue
        current_results_dir =  os.path.join(results_dir, sample.name)
        if not os.path.exists(current_results_dir):
            os.mkdir(current_results_dir)

        st=time.time()
        run_msmutect(slimeball, sample.tumor_fp, sample.normal_fp, num_cpus, current_results_dir)
        print(f"MSMuTect ran in {time.time() - st}")
        #
        # st = time.time()
        # run_strelka(sample, num_cpus, current_results_dir, slimeball_dir=slimeball)
        # print(f"strelka ran in {time.time()-st}")
        #
        # st=time.time()
        # split_bam_files(sample, num_cpus) # why not try more cpus
        # print(f"bam split ran in {time.time()-st}")

        # os.remove(sample.tumor_fp) # remove files, so download of next files can begin
        # os.remove(sample.normal_fp) # remove files, so download of next files can begin
        #

        # st=time.time()
        # run_per_contig_pipeline(sample, num_cpus, current_results_dir, slimeball_dir=slimeball)
        # print(f"per contig pipeline ran in {time.time()-st}")

        os.system(f"gsutil cp -r {current_results_dir} gs://texas-indels-preliminary/{sample.name}")

        shutil.rmtree(sample.sample_dir)
        shutil.rmtree(current_results_dir)

        # exit()
        # save results


if __name__ == '__main__':
    # print(obtain_sample())
    # main("/home/avraham/results/", "/home/avraham/samples", "/home/avraham/MaruvkaLab/Texas/SNVs/slimeball/")
    # main("/home/avraham/MaruvkaLab/Texas/SNVs/fake_res", "/home/avraham/MaruvkaLab/Texas/gdc/croc_trap/",
    #      "/home/avraham/MaruvkaLab/Texas/SNVs/slimeball")
    # sudo journalctl -u google-startup-scripts.service
    main("/home/avraham/results", "/home/avraham/samples", "/home/avraham/slimeball")