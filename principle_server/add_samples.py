from principle_server.db_utils import Sample, add_samples_to_db


def main(current_fp, tumor_sample_idx=1, tumor_size_idx=3, normal_sample_idx=4, normal_size_idx=6):
    with open("completed_samples.txt", 'r') as c:
        completed_text = c.read()
    with open(current_fp, 'r') as croc:
        lines = croc.readlines()
    all_samps=[]
    completed_count = 0
    all_sample_names = set()
    duplicate_count = 0
    for l in lines[1:]:
        split_line = l.split(",")
        tumor_sample_name = split_line[tumor_sample_idx].replace('"', '')
        normal_sample_name = split_line[normal_sample_idx].replace('"', '')
        current_tumor_sample = Sample(tumor_sample_name, False, int(split_line[tumor_size_idx]))
        current_normal_sample = Sample(normal_sample_name, False, int(split_line[normal_size_idx]))

        # if current_sample.uuid in ts:
        #     print("croc corcoc rocc \n\n\n\n\n\n\n\n\n\n\n\n")
        #     exit()
        # print(current_sample.uuid in ts)
        # print(f"UUID: {current_sample.uuid}, FEMALE: {current_sample.female}, SIZE: {current_sample.size}")
        if normal_sample_name in completed_text:
            completed_count += 1
            print("completed: " + normal_sample_name)
        elif normal_sample_name in all_sample_names:
            duplicate_count+=1
            print(f"duplicate: {normal_sample_name}")
        else:
            all_sample_names.add(normal_sample_name)
            all_samps.append(current_normal_sample)

        if tumor_sample_name in completed_text:
            completed_count += 1
            print("completed: "+tumor_sample_name)
        elif tumor_sample_name in all_sample_names:
            duplicate_count+=1
            print(f"duplicate: {tumor_sample_name}")
        else:
            all_sample_names.add(tumor_sample_name)
            all_samps.append(current_tumor_sample)

    add_samples_to_db(samples=all_samps)
    print(completed_count)
    print(duplicate_count)

if __name__ == '__main__':
    main("./TCGA_controls_reshaped_corrected_with_file_sizes.csv")
    main("./SNVs_pipeline_MSI_reshaped_with_file_sizes.csv")
    main("./TCGA_WGS_list_reshaped_final.csv", tumor_sample_idx=2, tumor_size_idx=4,
         normal_sample_idx=5, normal_size_idx=7)
