import os
from os.path import split

# from principle_server.scroll_db_utils import ScrollSample, add_samples_to_db
from principle_server.indels_ws_utils import ScrollSample, add_samples_to_db


def add_all_with_sizes(fp, delimiter, size_col, gdc_id_col, max_num):
    samples_dict = dict()

    with open(fp, 'r') as croc:
        lines = croc.readlines()
    for l in lines[1:1+max_num*2]:
        split_line = l.split(delimiter)
        patient_id = split_line[0].replace("\"", "")
        gdc_id = split_line[gdc_id_col].replace("\"", "")
        size = int(split_line[size_col])
        if patient_id in samples_dict:
            current_scroll_sample = samples_dict[patient_id]
            already_has_tumor = len(current_scroll_sample.tumor_gdc_sample_id)>0
            if already_has_tumor:
                current_scroll_sample.normal_gdc_sample_id = gdc_id
            else:
                current_scroll_sample.tumor_gdc_sample_id = gdc_id
            current_scroll_sample.size+=int(size)
        else:
            is_tumor = "tumor" in split_line[7].lower()
            if is_tumor:
                samples_dict[patient_id] = ScrollSample(patient_id, gdc_id, "", size)
            else:
                samples_dict[patient_id] = ScrollSample(patient_id, "", gdc_id, size)


    all_samps = [s for s in samples_dict.values() if len(s.normal_gdc_sample_id)>0 and len(s.tumor_gdc_sample_id)>0]
    # all_samps = [s for s in samples_dict.values() if len(s.normal_gdc_sample_id)==0 or len(s.tumor_gdc_sample_id)==0]
    print(all_samps)
    add_samples_to_db(samples=all_samps)

def add_files_patients(fp):
    # samples_dict = dict()

    with open(fp, 'r') as croc:
        lines = croc.readlines()
    croc=1
    all_samps = []
    for l in lines[1:]:
        split_line = l.split(",")
        patient_id = split_line[0]
        tumor_id=split_line[1]
        normal_id=split_line[3]
        all_samps.append(ScrollSample(patient_id, tumor_id, normal_id, 1))
        croc=1
    #     gdc_id = split_line[2]
    #     size = int(split_line[4])
    #     if patient_id in samples_dict:
    #         current_scroll_sample = samples_dict[patient_id]
    #         already_has_tumor = len(current_scroll_sample.tumor_gdc_sample_id) > 0
    #         if already_has_tumor:
    #             current_scroll_sample.normal_gdc_sample_id = gdc_id
    #         else:
    #             current_scroll_sample.tumor_gdc_sample_id = gdc_id
    #         current_scroll_sample.size += int(size)
    #     else:
    #         is_tumor = "tumor" in split_line[7].lower()
    #         if is_tumor:
    #             samples_dict[patient_id] = ScrollSample(patient_id, gdc_id, "", size)
    #         else:
    #             samples_dict[patient_id] = ScrollSample(patient_id, "", gdc_id, size)
    #
    # all_samps = [s for s in samples_dict.values() if len(s.normal_gdc_sample_id) > 0 and len(s.tumor_gdc_sample_id) > 0]
    # # all_samps = [s for s in samples_dict.values() if len(s.normal_gdc_sample_id)==0 or len(s.tumor_gdc_sample_id)==0]
    # print(all_samps)
    add_samples_to_db(samples=all_samps)


def add_from_remaining_file():
    with open("remaining_msi.txt", 'r') as croc:
        lines = croc.readlines()
    all_samps = []
    for l in lines:
        split_line = l.split("|")
        pat_id = split_line[0]
        tumor_id = split_line[1]
        normal_id = split_line[2]
        size = int(split_line[3])
        all_samps.append(ScrollSample(pat_id, tumor_id, normal_id, size))
    add_samples_to_db(samples=all_samps)


def add_all_msi_and_samples():
    base_dir = "/home/avraham/MaruvkaLab/Texas/Indels_1"
    add_from_remaining_file()
    # add_all_with_sizes(os.path.join(base_dir, "SNVs_pipeline_control_list_annotated_corrected.csv"), ",", 5, 3, 40)
    # add_all_with_sizes(os.path.join(base_dir, "gdc_TCGA_MSI_cases_filtered.txt"), "\t", 4, 2)
    # add_files_patients(os.path.join(base_dir, "SNVs_pipeline_controls_reshaped.csv"))
    # add_files_patients(os.path.join(base_dir, "SNVs_pipeline_MSI_reshaped.csv"))


if __name__ == '__main__':
    add_all_msi_and_samples()
