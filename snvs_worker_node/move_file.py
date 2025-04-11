import os

for i in list(range(1,23))+["Y", "X", "M"]:
    os.rename(f"chr{i}tumor_.bam", f"chr{i}_tumor.bam")
    os.rename(f"chr{i}tumor_.bam.bai", f"chr{i}_tumor.bam.bai")
