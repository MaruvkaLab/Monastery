import datetime, shutil, os, time, subprocess, glob, sys
from typing import List
from dataclasses import dataclass


pre_fp = "/home/avraham/pre"
current_fp = "/home/avraham/current"
post_fp = "/home/avraham/post"

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
        current_datetime = datetime.datetime.now()
        formatted_datetime = current_datetime.strftime("%b %d %Y %H:%M:%S")
        print(f"{formatted_datetime}: " + str(run_analysis))
        download_subprocess = subprocess.Popen(run_analysis)
        all_subprocesses.append(download_subprocess)
    wait_on_subprocesses(all_subprocesses)

@dataclass
class RunningProc:
    proc: subprocess.Popen # idk what type it is tbh
    bash_path: str

    @property
    def full_exec_path(self):
        return os.path.join(current_fp, self.bash_path)


def prune_all_subprocesses(all_subprocesses: List[RunningProc]) -> List[RunningProc]:
    ret = []
    for s in all_subprocesses:
        if s.proc.poll() is None:
            ret.append(s)
        else:
            shutil.move(os.path.join(pre_fp, s.bash_path), post_fp)
    return ret

def main():
    all_subprocesses = []

    while True:
        if len(all_subprocesses)<150:
            all_bash_files = glob.glob(f"{pre_fp}/*.sh")
            if len(all_bash_files) > 0:
                f = all_bash_files[0]
            else:
                all_subprocesses = prune_all_subprocesses(all_subprocesses)
                time.sleep(10)
                continue

            run_analysis = ["/usr/bin/time", "bash", f"{os.path.join(pre_fp, f)}"]
            current_datetime = datetime.datetime.now()
            formatted_datetime = current_datetime.strftime("%b %d %Y %H:%M:%S")
            print(f"{formatted_datetime}: " + str(run_analysis))
            run_proc = subprocess.Popen(run_analysis)
            shutil.move(f, current_fp)
            current_proc = RunningProc(run_proc, f)
            all_subprocesses.append(current_proc)
        else:
            all_subprocesses = prune_all_subprocesses(all_subprocesses)
            time.sleep(10)


if __name__ == '__main__':
    main()
