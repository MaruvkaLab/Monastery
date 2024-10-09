import os, time
import multiprocessing as mp
import shutil
import subprocess
from typing import Tuple, List
from dataclasses import dataclass

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
        return os.path.join(self.tumor_dir, self.tumor_filename)

    @property
    def name(self):
        return os.path.basename(self.sample_dir)


def obtain_sample() -> Sample:
    """
    :return: sample info for current sample. None if none are available
    """
    samples = os.listdir("/home/avraham/samples")
    if len(samples)==0:
        return None
    else:
        current_samp = samples[0]
        tumor_dir = os.path.join(current_samp, "tumor")
        normal_dir = os.path.join(current_samp, "normal")
        tumor_fn = os.listdir(tumor_dir)[0]
        normal_fn = os.listdir(normal_dir)[0]
        return Sample(current_samp, tumor_dir, normal_dir, tumor_fn, normal_fn)


def run_strelka(patient: Sample, num_cpus: int, results_dir: str):
    """
    :param patient: sample to run on
    :param num_cpus: number of cpus to run strelka on
    :param results_dir: output directory
    :return: None
    """
    pipeline_config_step_cmd = f"python2 /home/avraham/strelka/strelka-2.9.10.centos6_x86_64/bin/configureStrelkaSomaticWorkflow.py \
    --normalBam {patient.normal_fp} \
    --tumorBam {patient.tumor_fp} \
    --referenceFasta  /home/avraham/GRCh38.d1.vd1.fa \
    --callRegions /home/avraham/GRCh38_chromosomes.bed.bgzf \
    --runDir /home/avraham/{results_dir}"

    pipeline_run_step = f"python2 runWorkflow.py -m local -j {num_cpus}"
    subprocess.run(pipeline_config_step_cmd, check=True, shell=True)

    subprocess.run(pipeline_run_step, check=True, shell=True)



def run_as_pool(cmds: List[str], cores: int):
    results = []
    cmds = [command.split(" ") for command in cmds]
    for command in cmds:
        num_active_processes = sum([1 for p in results if p.poll() is None]) # how many processes are actually running
        while num_active_processes == cores:
            time.sleep(1)  # long wait time to avoid wasting processing power
            num_active_processes = sum([1 for p in results if p.poll() is None])
        results.append(subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE))

    while sum([1 for p in results if p.poll() is None])>0: # join the processes
        time.sleep(2)

    num_failed_processes  = sum([p.poll() for p in results])
    if num_failed_processes==0: # all processes succeeded
        return 0
    else:
        failures = []
        for p in results:
            if p.poll() != 1:
                stdout, stderr = p.communicate()
                failures.append(f"stdout: {stdout}, stderr: {stderr}")
        failures_str = '\n'.join(failures)
        raise RuntimeError(f"{cmds} failed\n{num_failed_processes} failed\n{failures_str}")


def split_commands(input_bam: str, results_dir: str) -> List[str]:
    cmds = []
    chrs = ["chr" + str(i) for i in range(1, 23)] + ["chrX", "chrY", "chrM"]
    for chrom in chrs:
        output_fp = os.path.join(results_dir, chrom+'.bam')
        cmds.append(f"samtools view -b -h {chrom} {input_bam} -o {output_fp}")
        cmds.append(f"samtools index {output_fp}")
    return cmds

def split_bam_files(patient: Sample, num_cpus: int):
    tumor_cmds = split_commands(patient.tumor_fp, patient.tumor_dir)
    normal_cmds = split_commands(patient.normal_fp, patient.normal_dir)
    for cmds in [normal_cmds, tumor_cmds]:
        run_as_pool(cmds, num_cpus)
    os.remove(patient.tumor_fp)
    os.remove(patient.normal_fp)


def run_mutect(patient: Sample, num_cpus: int, results_dir: str):
    pass


def main():
    results_dir = "/home/avraham/results/"
    strelka_results_dir = os.path.join(results_dir, "strelka")
    num_cpus = 8
    while True:
        sample = obtain_sample()
        if sample is None:
            print("waiting for sample")
            time.sleep(10)
            continue
        current_results_dir_strelka = os.path.join(strelka_results_dir, sample.name)
        run_strelka(sample, num_cpus, results_dir)
        split_bam_files(sample, num_cpus)
        # run_mutect()
        # shutil.rmtree(sample.sample_dir) # remove files


if __name__ == '__main__':
    main()
