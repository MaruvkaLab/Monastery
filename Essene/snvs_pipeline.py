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
        return os.path.join(self.normal_dir, self.normal_filename)

    @property
    def name(self):
        return os.path.basename(self.sample_dir)


def obtain_sample() -> Sample:
    """
    :return: sample info for current sample. None if none are available
    """
    samps_dir = "/home/avraham/samples"
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
            return Sample(current_samp, tumor_dir, normal_dir, tumor_fn, normal_fn)
        else:
            return None  # download is still in progress


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
    --runDir {results_dir}"
    pipeline_run_step = f"python2 {os.path.join(results_dir, 'runWorkflow.py')} -m local -j {num_cpus}"
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
            if p.poll() != 0:
                stdout, stderr = p.communicate()
                failures.append(f"stdout: {stdout.decode('ascii')}, stderr: {stderr.decode('ascii')}")
        failures_str = '\n'.join(failures)
        raise RuntimeError(f"{cmds} failed\n{num_failed_processes} failed\n{failures_str}")


def split_commands(input_bam: str, results_dir: str, split_cmd: bool) -> List[str]:
    # either split (split_cmd=true) or index (split_cmd=false)
    cmds = []
    chrs = ["chr" + str(i) for i in range(1, 23)] + ["chrX", "chrY", "chrM"]
    for chrom in chrs:
        output_fp = os.path.join(results_dir, chrom+'.bam')
        if split_cmd:
            cmds.append(f"samtools view -b -h {input_bam} {chrom} -o {output_fp}")
        else:
            cmds.append(f"samtools index {output_fp}")
    return cmds



def split_bam_files(patient: Sample, num_cpus: int):
    tumor_split_cmds = split_commands(patient.tumor_fp, patient.tumor_dir, split_cmd=True)
    normal_split_cmds = split_commands(patient.normal_fp, patient.normal_dir, split_cmd=True)
    all_split_cmds = tumor_split_cmds+normal_split_cmds
    run_as_pool(all_split_cmds, num_cpus)

    tumor_index_cmds = split_commands(patient.tumor_fp, patient.tumor_dir, split_cmd=False)
    normal_idx_cmds = split_commands(patient.normal_fp, patient.normal_dir, split_cmd=False)
    all_idx_cmds = tumor_index_cmds + normal_idx_cmds
    run_as_pool(all_idx_cmds, num_cpus)
    # os.remove(patient.tumor_fp)
    # os.remove(patient.normal_fp)


def run_mutect(patient: Sample, num_cpus: int, results_dir: str):
    if not os.path.exists(results_dir):
        os.mkdir(results_dir)
    print("simulating 5 minute mutect run")
    time.sleep(300)
    fake_result_file = os.path.join(results_dir, "FAKE_MUTECT_RESULT.txt")
    with open(fake_result_file, 'w+') as croc:
        croc.write("croctrapcroctrap")
    return

def main():
    results_dir = "/home/avraham/results/"
    strelka_results_dir = os.path.join(results_dir, "strelka")
    mutect_results_dir = os.path.join(results_dir, "mutect")
    num_cpus = 8
    while True:
        sample = obtain_sample()
        if sample is None:
            print("waiting for sample")
            time.sleep(10)
            continue
        current_results_dir_strelka = os.path.join(strelka_results_dir, sample.name)
        # run_strelka(sample, num_cpus, current_results_dir_strelka)
        split_bam_files(sample, 20) # why not try more cpus
        run_mutect(sample, num_cpus, os.path.join(mutect_results_dir, sample.name))
        # shutil.rmtree(sample.sample_dir) # remove files
        return 0


if __name__ == '__main__':
    print(obtain_sample())
    main()
