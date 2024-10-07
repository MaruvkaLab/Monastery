import subprocess, os
from dataclasses import dataclass
from sys import stderr


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
subprocess.run("samtools view /home/avraham/MaruvkaLab/msmutect_docker/staging/tmp/TCGA-A6-2677_N_chr1.bam  chr1:100000", shell=True, check=True)