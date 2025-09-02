import os
import csv

input_dir = "C:/Users/avrah/MaruvkaLab/Monastery/cluster_calculate_mutations/TCGA_cases_matrices"
output_file = "combined_coverage.csv"

# Prepare CSV header
rows = []
header = ["Case", "Normal_mean_coverage", "Tumor_mean_coverage"]

for filename in os.listdir(input_dir):
    if filename.endswith(".txt"):  # adjust extension if needed
        with open(os.path.join(input_dir, filename), "r") as f:
            lines = f.read().strip().splitlines()
            # Parse each line: split at ':' and take the value
            case = lines[0].split(":")[1].strip()
            cov1 = float(lines[1].split(":")[1].strip())
            cov2 = float(lines[2].split(":")[1].strip())
            normal_cov, tumor_cov = tuple(sorted([cov1, cov2]))
            rows.append([case, normal_cov, tumor_cov])

# Write to CSV
with open(output_file, "w", newline="") as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(header)
    writer.writerows(rows)