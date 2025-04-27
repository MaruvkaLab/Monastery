import os
from dataclasses import dataclass

@dataclass
class Patient:
    tumor: str
    normal: str


def write_script(patient_id: str, tumor_id: str, normal_id: str):
    unzipped_pth = "$1"
    full_results_path = "$2"
    msmutect_path = "$3"

    with open(f"bleeding_scripts/{patient_id}.sh", 'w+') as script:
        script.write(f"#!/bin/bash\n")
        script.write(f"unzip {tumor_id}.zip -d {unzipped_pth}\n")
        script.write(f"unzip {normal_id}.zip -d {unzipped_pth}\n")
        script.write(f"rm {tumor_id}.zip\n")
        script.write(f"rm {normal_id}.zip\n")
        unzipped_tumor = os.path.join(unzipped_pth, tumor_id+".hist.tsv")
        unzipped_normal = os.path.join(unzipped_pth, normal_id+".hist.tsv")
        # script.write(f"mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/{patient_id}.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/\n")
        script.write(f"$3 -N {unzipped_normal} "
                     f"-T {unzipped_tumor} --from_file --integer -O $2/{patient_id} -A -m")


def TCGA_stad_list():
    with open("/home/avraham/MaruvkaLab/Texas/TCGA_STAD_list.txt", 'r') as stad_list:
        patient_dict = {}
        current_line = stad_list.readline()
        while current_line != "":
            # print(current_line)
            tokens = current_line.split("\t")
            case_id = tokens[1]
            sample_id = tokens[2]
            cell_type = tokens[7].upper()
            if "NORMAL" in cell_type:
                tumor=False
            elif "TUMOR" in cell_type:
                tumor = True
            else:
                raise RuntimeError("Failed to derive cell type")

            if case_id not in patient_dict:
                if tumor:
                    new_patient = Patient(tumor=sample_id, normal="")
                else:
                    new_patient = Patient(normal=sample_id, tumor="")
                patient_dict[case_id] = new_patient
            else:
                if tumor:
                    patient_dict[case_id].tumor = sample_id
                else:
                    patient_dict[case_id].normal = sample_id

            current_line = stad_list.readline()

    for key in patient_dict.keys():
        tumor_id = patient_dict[key].tumor
        normal_id = patient_dict[key].normal
        if tumor_id == "":
            print(normal_id)
        else:
            write_script(key, tumor_id, normal_id)

def MSI_and_controls():
    with open("/home/avraham/MaruvkaLab/Texas/completed.txt", 'r') as completed: #GAIA: create with gsutil ls gs://texas-bleeding > completed.txt
        completed_text = completed.read()
    for current_fp in ["../principle_server/TCGA_controls_reshaped_corrected_with_file_sizes.csv", #GAIA: CHANGE
                       "../principle_server/SNVs_pipeline_MSI_reshaped_with_file_sizes.csv"]: #GAIA: CHANGE
        with open(current_fp, 'r') as croc:
            lines = croc.readlines()
        for l in lines[1:]:
            split_line = l.split(",")
            tumor = split_line[1]
            normal = split_line[4]
            if tumor in completed_text and normal in completed_text:
                write_script(split_line[0], tumor, normal)

if __name__ == '__main__':
    MSI_and_controls()