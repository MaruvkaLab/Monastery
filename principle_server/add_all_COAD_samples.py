from principle_server.db_utils import Sample, add_samples_to_db


def main():
    current_fp = "./TCGA_controls_reshaped_corrected_with_file_sizes.csv"
    current_fp = "./SNVs_pipeline_MSI_reshaped_with_file_sizes.csv"
    with open(current_fp, 'r') as croc:
        lines = croc.readlines()
    all_samps=[]
    for l in lines[1:]:
        split_line = l.split(",")
        current_tumor_sample = Sample(split_line[1], False, int(split_line[3]))
        current_normal_sample = Sample(split_line[4], False, int(split_line[6]))

        # if current_sample.uuid in ts:
        #     print("croc corcoc rocc \n\n\n\n\n\n\n\n\n\n\n\n")
        #     exit()
        # print(current_sample.uuid in ts)
        # print(f"UUID: {current_sample.uuid}, FEMALE: {current_sample.female}, SIZE: {current_sample.size}")
        all_samps.append(current_normal_sample)
        all_samps.append(current_tumor_sample)
    add_samples_to_db(samples=all_samps)


if __name__ == '__main__':
    main()
