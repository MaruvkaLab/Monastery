from os.path import split

from Abbot.scroll_db_utils import ScrollSample, add_samples_to_db


def main():
    fp = "/home/avraham/MaruvkaLab/Texas/snvs/gdc_TCGA_MSI_cases_filtered.txt"
    samples_dict = dict()

    with open(fp, 'r') as croc:
        lines = croc.readlines()
    for l in lines[1:]:
        split_line = l.split("\t")
        patient_id = split_line[0]
        gdc_id = split_line[2]
        size = int(split_line[4])
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


if __name__ == '__main__':
    main()
