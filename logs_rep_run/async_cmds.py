import subprocess, os, time
from dataclasses import dataclass
from sys import stderr
from typing import List


#
# process = subprocess.Popen(["sleep", "5s"],
#                            stdout=subprocess.PIPE, stderr=subprocess.PIPE)
# print("croc")
# print(process.poll())
# # Continue with other code while the process is running
# # To get the output and status later:
# stdout, stderr = process.communicate()
# print(process.poll())
#
# # Get the return code once the process finishes
# return_code = process.returncode
# print(return_code)
#
#
# # print("STDOUT:", stdout.decode())
# print("STDERR:", stderr.decode())
# print("Return code:", return_code)

@dataclass
class ShellReturn:
    code: int
    stdout: str
    stderr: str

    @property
    def succeeded(self):
        return self.code == 0


# def run_shell_command_synchronously(cmd: str) -> ShellReturn:
#     a=subprocess.run(cmd.split(" "), capture_output=True)
#     stdout, stderr = a.communicate()
#     return ShellReturn(a.poll(), )


# v=run_shell_command_synchronously("ls -lah")
# print(v.code)
# print(v.stdout)
# print(v.stderr)

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


run_as_pool(["samtools croc trap"], 8)
# subprocess.run("samtools view /home/avraham/MaruvkaLab/msmutect_docker/staging/tmp/TCGA-A6-2677_N_chr1.bam  chr1:100000", shell=True, check=True)