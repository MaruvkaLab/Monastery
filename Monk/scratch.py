import subprocess, time

print("croc")
a=subprocess.Popen(["sleep", "5"])
print("trap")
while a.poll() is None:
    time.sleep(0.5)
    print("waiting")
print("croc trap")