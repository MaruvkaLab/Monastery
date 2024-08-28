import os, time, subprocess, glob, sys
from typing import List


def wait_on_subprocesses(p: List[subprocess.Popen]):
    done = [False for i in range(len(p))]
    while sum(done) != len(p):
        for i, process in enumerate(p):
            if process.poll() is None:
                time.sleep(2)
            else:
                done[i] = True


def run_all_bash_files_asynchronously(all_bash_files: List[str]):
    all_subprocesses = []
    for f in all_bash_files:
        run_analysis = ["/usr/bin/time", "bash", f"{f}"]
        print(run_analysis)
        download_subprocess = subprocess.Popen(run_analysis)
        all_subprocesses.append(download_subprocess)
    wait_on_subprocesses(all_subprocesses)


def main():
    num_scripts = int(sys.argv[1])
    all_bash_files = glob.glob("/storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/*.sh")[:num_scripts]
    run_all_bash_files_asynchronously(all_bash_files)


if __name__ == '__main__':
    main()
