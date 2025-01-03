import os
import sys


def analyze_contest_file(fp: str):
    try:
        with open(fp, 'r') as contest_file:
            contest_lines = contest_file.readlines()
            second_line = contest_lines[1]
            second_line_tokens = second_line.split()
            num_sites = int(second_line_tokens[7].strip())
            contamination = float(second_line_tokens[3].strip())
            return num_sites, contamination
    except:
        return None, None


def main():
    results_dir = sys.argv[1]
    loci = []
    contamination = []
    for chrom in [str(i) for i in range(1,23)]+["X", "Y", "M"]:
        contest_file_name = os.path.join(results_dir, f"chr{chrom}_contamination.af.txt")
        new_loci, new_contamination = analyze_contest_file(contest_file_name)
        if new_loci is None:
            continue
        loci.append(new_loci)
        contamination.append(new_contamination)
    total_loci = sum(loci)
    contamination_avg = sum([cont*num_loci/total_loci for cont, num_loci in zip(contamination, loci)])
    print(round(contamination_avg, 4)/100)

if __name__ == '__main__':
    # print(analyze_contest_file("/home/avraham/MaruvkaLab/Texas/SNVs/fake_res/samp1/chr1_contamination.af.txt"))
    main()
