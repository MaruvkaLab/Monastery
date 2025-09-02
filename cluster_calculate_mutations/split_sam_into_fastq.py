#!/Local/bfe_maruvka/anaconda3/bin/python3
import multiprocessing
import time, sys, os
from collections import deque
from dataclasses import dataclass
from multiprocessing import Process
from typing import Dict, List


class Read:
    def __init__(self, text: str):
        split_text = text.split("\t")
        self.text = text
        self.name = split_text[0]
        self.chrom = split_text[2]
        self.loc = int(split_text[3])
        self.flag = int(split_text[1])
        self.seq = split_text[9]
        self.qual = split_text[10]

    def __str__(self):
        return self.text


class FileBackedQueue:
    def __init__(self, fp: str):
        self.file =  open(fp, 'w+')
        self.queue = []

    def write(self, text):
        self.queue.append(text)
        if len(self.queue) > 10_000:
            self.file.write("".join(self.queue))
            self.queue=[]

    def close(self):
        self.file.write("".join(self.queue))
        self.file.close()


def reads_are_pair(read, other_read):
    if read is None or other_read is None:
        return False

    if read.name == other_read.name:
        return True
    else:
        return False


def is_first_read(read: Read):
    flag = read.flag
    if flag & 0x40:
        return True
    elif flag & 0x80:
        return False
    else:
        raise RuntimeError("Unpaired Read")


def fastq_write_read(fq, read: Read):
    fq.write("@"+read.name+"\n"+read.seq+"\n+\n"+read.qual+"\n")


def write_fastq_line(output_fastq1, output_fastq2, read_a: Read, read_b: Read):
    if is_first_read(read_a):
        first_read = read_a
        second_read = read_b
    else:
        first_read = read_b
        second_read = read_a
    fastq_write_read(output_fastq1, first_read)
    fastq_write_read(output_fastq2, second_read)


def prune_dict(current_reads_dict: Dict[str, Read], leftover_reads_sam: FileBackedQueue, current_read_location: int, max_pair_dist: int):
    new_reads_dict = dict()
    for read_name, read in current_reads_dict.items():
        if abs(read.loc - current_read_location) < max_pair_dist:
            new_reads_dict[read_name] = read
        else:
            leftover_reads_sam.write(read)


def write_unpaired_reads(leftover_reads_sam, current_reads_dict):
    for read in current_reads_dict.values():
        leftover_reads_sam.write(str(read))


def split_sam_into_fastq_single_threaded(sam_fp: str, output_fastq_prefix: str, max_pair_dist: int):
    current_reads_dict = dict()
    output_fastq1 = FileBackedQueue(output_fastq_prefix+"_1.fastq")
    output_fastq2 = FileBackedQueue(output_fastq_prefix+"_2.fastq")
    leftover_reads_sam = FileBackedQueue(output_fastq_prefix + "_leftovers.sam")
    last_read = None
    current_read = None
    with open(sam_fp, "r") as f:
        for i, line in enumerate(f):
            # if "HISEQ1:28:HA2RLADXX:2:2104:9525:72896" in line:
            #     croc=1
            if i%100_000==0:
                print(f"READ NUM: {i}")
                print(f"SIZE OF READS BACKLOG {len(current_reads_dict)}")
                if current_read is not None:
                    print(f"CURRENT_READ:{current_read.chrom}:{current_read.loc}")
            if line[0]=="@":
                continue

            current_read = Read(line)
            if reads_are_pair(last_read, current_read):
                write_fastq_line(output_fastq1, output_fastq2, current_read, last_read)
                last_read = None
            else:
                if last_read is not None: # last read was not mapped so add it to the dict
                    current_reads_dict[last_read.name] = last_read

                if current_read.name in current_reads_dict:
                    write_fastq_line(output_fastq1, output_fastq2, current_read, current_reads_dict[current_read.name])
                    del current_reads_dict[current_read.name]
                    last_read = None
                else: # current read went unmapped
                    last_read = current_read

            if len(current_reads_dict) > max_pair_dist: # shouldn't ever really happen
                print("WARNING: PRUNING CURRENT READS DICT. THIS PROBABLY INDICATES SOME SORT OF STRANGE ALIGNMENT")
                if current_read is not None:
                    print(f"Last Read Loc: {current_read.chrom}: {current_read.loc}")
                current_reads_dict = prune_dict(current_reads_dict, leftover_reads_sam, current_read.loc, max_pair_dist)

    print(f"Total number of reads: {i}")
    print(f"Total number of unpaired reads: {len(current_reads_dict)}")
    write_unpaired_reads(leftover_reads_sam, current_reads_dict)
    output_fastq1.close()
    output_fastq2.close()
    leftover_reads_sam.close()


@dataclass
class Target:
    # start_pos is the START of a line
    start_pos: int
    stop_pos: int


def split_sam_into_fastq_worker(sam_fp: str, target: Target, output_fastq_prefix: str, max_pair_dist: int):
    current_reads_dict = dict()
    output_fastq1 = FileBackedQueue(output_fastq_prefix+"_1.fastq")
    output_fastq2 = FileBackedQueue(output_fastq_prefix+"_2.fastq")
    leftover_reads_sam = FileBackedQueue(output_fastq_prefix + "_leftovers.sam")
    last_read = None
    current_read = None
    read_count = 0
    with open(sam_fp, "r") as f:
        f.seek(target.start_pos)
        while f.tell() < target.stop_pos:
            read_count+=1
            line = f.readline()
            if not line: # file finished
                break
            # if "HISEQ1:28:HA2RLADXX:2:2104:9525:72896" in line:
            #     croc=1
            if read_count%10_000==0:
                print(f"READ NUM: {read_count}")
                print(f"SIZE OF READS BACKLOG {len(current_reads_dict)}")
                if current_read is not None:
                    print(f"CURRENT_READ:{current_read.chrom}:{current_read.loc}")
            if line[0]=="@":
                continue

            current_read = Read(line)
            if reads_are_pair(last_read, current_read):
                write_fastq_line(output_fastq1, output_fastq2, current_read, last_read)
                last_read = None
            else:
                if last_read is not None: # last read was not mapped so add it to the dict
                    current_reads_dict[last_read.name] = last_read

                if current_read.name in current_reads_dict:
                    write_fastq_line(output_fastq1, output_fastq2, current_read, current_reads_dict[current_read.name])
                    del current_reads_dict[current_read.name]
                    last_read = None
                else: # current read went unmapped
                    last_read = current_read

            if len(current_reads_dict) > max_pair_dist: # shouldn't ever really happen
                print("WARNING: PRUNING CURRENT READS DICT. THIS PROBABLY INDICATES SOME SORT OF STRANGE ALIGNMENT")
                if current_read is not None:
                    print(f"Last Read Loc: {current_read.chrom}: {current_read.loc}")
                current_reads_dict = prune_dict(current_reads_dict, leftover_reads_sam, current_read.loc, max_pair_dist)

    print(f"Total number of reads: {read_count}")
    print(f"Total number of unpaired reads: {len(current_reads_dict)}")
    write_unpaired_reads(leftover_reads_sam, current_reads_dict)
    output_fastq1.close()
    output_fastq2.close()
    leftover_reads_sam.close()


def acquire_targets(file_handle, step: int):
    # acquire all the locations in the file that should be analyzed
    targets = []
    pos = 0
    next_target = 0
    with open(file_handle, 'rb') as f:
        filesize = os.fstat(f.fileno()).st_size
        while pos < filesize:

            # target raw jump
            if next_target >= filesize:
                break

            f.seek(next_target, os.SEEK_SET)  # land somewhere mid-line
            f.readline()  # advance to *end* of that broken line
            pos = f.tell()

            next_target+=step
            targets.append(Target(pos, next_target))
    return targets



def create_processes(sam_fp: str, targets: List[Target], output_fastq_prefixes: List[str], max_pair_dist: int, chunk_size: int):
    processes = deque()
    for prefix, t in zip(output_fastq_prefixes, targets):
        p = Process(target=split_sam_into_fastq_worker, args=(sam_fp, t, prefix, max_pair_dist))
        processes.append(p)
    return processes


def prune_processes(active_processes: List[multiprocessing.Process]):
    new_active_processes = []
    for p in active_processes:
        if p.is_alive():
            new_active_processes.append(p)
        else:
            p.join()
    return new_active_processes


def join_into_one_file(output_file: str, filenames: List[str]):
    with open(output_file, "w") as out:
        for i, fname in enumerate(filenames):
            with open(fname, "r") as f:
                for line in f:
                    out.write(line)
            # if i < len(filenames) - 1:
            #     out.write("\n")  # separator between files
            # os.remove(fname)


def join_all_files(output_prefix: str, prefixes: List[str]):
    join_into_one_file(f"{output_prefix}_1.fastq", [p+"_1.fastq" for p in prefixes])
    join_into_one_file(f"{output_prefix}_2.fastq", [p+"_2.fastq" for p in prefixes])
    join_into_one_file(f"{output_prefix}_leftovers.sam", [p+"_leftovers.sam" for p in prefixes])


def split_sam_into_fastq_multi_threaded(sam_fp: str, output_fastq_prefix: str, max_pair_dist: int, chunk_size: int, cores: int):
    targets = acquire_targets(sam_fp, chunk_size)
    output_fastq_prefixes = [output_fastq_prefix + f"_{i}" for i in range(len(targets))]
    all_processes = create_processes(sam_fp, targets, output_fastq_prefixes, max_pair_dist, chunk_size)
    active_processes = []
    while True:
        if len(active_processes) < cores:
            if len(all_processes) > 0:
                active_processes.append(all_processes.pop())
                active_processes[-1].start()
            else:
                active_processes = prune_processes(active_processes)
                if len(active_processes) == 0:
                    break  # all processes have completed
        else:
            active_processes = prune_processes(active_processes)
        time.sleep(0.2)
    join_all_files(output_fastq_prefix, output_fastq_prefixes)


def main(sam_fp: str, output_fastq_prefix: str):
    a=time.time()
    # split_sam_into_fastq_single_threaded(sam_fp, "original", int(1e4))
    split_sam_into_fastq_multi_threaded(sam_fp, output_fastq_prefix, int(1e4), int(5e10), 10)
    e=time.time()
    print(f"time elapsed: {e-a}")


if __name__ == '__main__':
    # main("../fmil.sam", "multithreaded")
    main(sys.argv[1], sys.argv[2])
