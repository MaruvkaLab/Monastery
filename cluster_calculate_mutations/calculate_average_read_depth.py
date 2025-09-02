import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

def main():
    all_cases_coverage = "C:/Users/avrah/MaruvkaLab/TCGA_controls_reshaped_corrected_with_file_sizes.csv"
    all_cases_df = pd.read_csv(all_cases_coverage, sep=",")
    known_cases_df = pd.read_csv("combined_coverage.csv", sep=",")
    merged = pd.merge(known_cases_df, all_cases_df, left_on='Case', right_on='Case.ID', how='inner')
    tx = merged['Tumor_file_size']//10**9
    ty = merged['Tumor_mean_coverage']
    nx = merged['Normal_file_size']//10**9
    ny = merged['Normal_mean_coverage']
    # plt.scatter(merged['Tumor_file_size'], merged['Tumor_mean_coverage'])
    # plt.scatter(merged['Normal_file_size'], merged['Normal_mean_coverage'])
    x = np.concatenate((nx, tx))
    y = np.concatenate((ny, ty))
    plt.xlabel('File Size')
    plt.ylabel('Coverage')
    plt.title('Scatter Plot of file size vs coverage')
    m, b = np.polyfit(x, y, 1)
    print(m)
    print(b)
    # Plot the fit line
    plt.plot(x, m * x + b, color='red', label=f'Fit: y={m:.2f}x+{b:.2f}')
    plt.scatter(x, y)
    plt.legend()
    plt.show()


def calculate_for_full_file():
    all_cases = "C:/Users/avrah/MaruvkaLab/TCGA_WGS_list_reshaped_final.csv"
    all_cases_df = pd.read_csv(all_cases, sep=",")
    n = (all_cases_df["Normal_file_size"]//10**9)*0.21488081591352667+1.6214929181173308
    t = (all_cases_df["Tumor_file_size"]//10**9)*0.21488081591352667+1.6214929181173308
    print(t.median())
    print(n.median())



calculate_for_full_file()