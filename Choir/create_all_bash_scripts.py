import os
from dataclasses import dataclass

@dataclass
class Patient:
    tumor: str
    normal: str


def write_script(patient_id: str, tumor_id: str, normal_id: str):
    unzipped_pth = "/storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped"
    with open(f"stomach_scripts/{patient_id}.sh", 'w+') as script:
        script.write(f"#!/bin/bash\n")
        script.write(f"unzip {tumor_id}.zip -d {unzipped_pth}\n")
        script.write(f"unzip {normal_id}.zip -d {unzipped_pth}\n")
        script.write(f"rm {tumor_id}.zip\n")
        script.write(f"rm {normal_id}.zip\n")
        unzipped_tumor = os.path.join(unzipped_pth, tumor_id+".hist.tsv")
        unzipped_normal = os.path.join(unzipped_pth, normal_id+".hist.tsv")
        script.write(f"mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/{patient_id}.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/\n")
        script.write(f"/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N {unzipped_normal} "
                     f"-T {unzipped_tumor} --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/{patient_id} -m")


def main():
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


if __name__ == '__main__':
    main()