import time, random, os
import numpy as np
from typing import List
from dataclasses import dataclass
from collections import OrderedDict


class NumPicker:
    def __init__(self, relative_probabilities: List[float]):
        if abs(1-sum(relative_probabilities))>1e-4:
            raise RuntimeError("Probabilities must sum to 1")
        self.map = self.initialize_map(relative_probabilities)

    def initialize_map(self, relative_probabilities) -> np.ndarray:
        map = np.zeros((100), np.int32)  # build a map to map the random numbers to choices of which file
        current_probability = 0
        for i, p in enumerate(relative_probabilities):
            new_probability = current_probability + p
            map[int(round(current_probability, 2) * 100): int(round(new_probability, 2) * 100)] = i
            current_probability = new_probability
        return map

    def pick_num(self):
        random_num = random.random()
        return self.map[int(random_num*100)]


class ReadBucket:
    def __init__(self, name: str, dest_dir: str, is_null: bool):
        if not is_null:
            self.fastq_1 = os.path.join(dest_dir, name+"_1.fastq")
            self.opened_fastq_1 = open(self.fastq_1, 'w')
            self.fastq_2 = os.path.join(dest_dir, name+"_2.fastq")
            self.opened_fastq_2 = open(self.fastq_2, 'w')
        self.is_null = is_null

    def add_reads(self, read_1: str, read_2: str):
        if self.is_null:
            return
        else:
            self.opened_fastq_1.write(read_1)
            self.opened_fastq_2.write(read_2)

    def close(self):
        if self.is_null:
            return
        self.opened_fastq_1.close()
        self.opened_fastq_2.close()


def next_4_lines(f) -> str:
    lines = [next(f, None) for _ in range(4)]
    if any(line is None for line in lines):
        return None
    return "".join(lines)


def main():
    # fastq_1 = "C:/Users/avrah/MaruvkaLab/Monastery/cluster_calculate_mutations/negatives_test/H_400.fastq"
    # fastq_2 = "C:/Users/avrah/MaruvkaLab/Monastery/cluster_calculate_mutations/negatives_test/H_4002.fastq"
    # x30_depth_file = ReadBucket("30x",
    #                             "C:/Users/avrah/MaruvkaLab/Monastery/cluster_calculate_mutations/negatives_test/dst", False)
    # x60_depth_file = ReadBucket("60x",
    #                             "C:/Users/avrah/MaruvkaLab/Monastery/cluster_calculate_mutations/negatives_test/dst", False)
    #
    #
    hg001 = True

    if hg001:
        fastq_1 = "/storage/bfe_maruvka/avrahamk/Negatives/HG001/HG001_300X_1.fastq"
        fastq_2 = "/storage/bfe_maruvka/avrahamk/Negatives/HG001/HG001_300X_2.fastq"
        x40_depth_file_1 = ReadBucket("40x_1", "/storage/bfe_maruvka/avrahamk/Negatives/HG001", False)
        x40_depth_file_2 = ReadBucket("40x_2", "/storage/bfe_maruvka/avrahamk/Negatives/HG001", False)
        x80_depth_file_1 = ReadBucket("80x_1", "/storage/bfe_maruvka/avrahamk/Negatives/HG001", False)
        x80_depth_file_2 = ReadBucket("80x_2", "/storage/bfe_maruvka/avrahamk/Negatives/HG001", False)

        null_bucket = ReadBucket(None, None, True)
        all_buckets_wprobabilities = OrderedDict(
            [(x40_depth_file_1, 2/15), (x40_depth_file_2, 2/15), (x80_depth_file_1, 4/15), (x80_depth_file_2, 4/15), (null_bucket, 1/5)])

    else:
        fastq_1 = "/storage/bfe_maruvka/avrahamk/Negatives/HG006/HG006_100X_1.fastq"
        fastq_2 = "/storage/bfe_maruvka/avrahamk/Negatives/HG006/HG006_100X_2.fastq"
        x30_depth_file = ReadBucket("30x", "/storage/bfe_maruvka/avrahamk/Negatives/HG006", False)
        x60_depth_file = ReadBucket("60x", "/storage/bfe_maruvka/avrahamk/Negatives/HG006", False)
        null_bucket = ReadBucket(None, None, True)
        all_buckets_wprobabilities = OrderedDict(
            [(x30_depth_file, 3 / 10), (x60_depth_file, 3 / 5), (null_bucket, 1 / 10)])


    all_buckets = list(all_buckets_wprobabilities.keys())
    all_bucket_probabilities = list(all_buckets_wprobabilities.values())
    opened_fastq_1 = open(fastq_1, 'r')
    opened_fastq_2 = open(fastq_2, 'r')
    read_assigner = NumPicker(all_bucket_probabilities)

    f1_lines = next_4_lines(opened_fastq_1)
    f2_lines = next_4_lines(opened_fastq_2)
    while True:
        if f1_lines is None or f2_lines is None:
            for bucket in all_buckets:
                bucket.close()
                exit()
        else:
            bucket_number = read_assigner.pick_num()
            all_buckets[bucket_number].add_reads(f1_lines, f2_lines)
            f1_lines = next_4_lines(opened_fastq_1)
            f2_lines = next_4_lines(opened_fastq_2)


if __name__ == '__main__':
    main()


