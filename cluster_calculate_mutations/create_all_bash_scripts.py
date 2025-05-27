import os
from dataclasses import dataclass
from collections import defaultdict


@dataclass
class Patient:
    case_id: str
    tumor: str
    normal: str


def write_script(patient_id: str, tumor_id: str, normal_id: str):
    hist_fp = "/home/avraham/hist_files"
    output_fp = "/home/avraham/output_files"
    with open(f"correction_scripts/{patient_id}.sh", 'w+') as script:
        script.write(f"#!/bin/bash\n")
        # script.write(f"export PATH=/Local/bfe_maruvka/google-cloud-sdk/bin/:$PATH\n")

        tumor_zip = f"{hist_fp}/{tumor_id}.zip"
        normal_zip = f"{hist_fp}/{normal_id}.zip"

        script.write(f"gcloud storage cp gs://texas-bleeding/{tumor_id}.zip {tumor_zip}\n")
        script.write(f"gcloud storage cp gs://texas-bleeding/{normal_id}.zip {normal_zip}\n")
        script.write(f"unzip {tumor_zip} -d {hist_fp}\n")
        script.write(f"unzip {normal_zip} -d {hist_fp}\n")
        script.write(f"rm {tumor_zip}\n")
        script.write(f"rm {normal_zip}\n")
        unzipped_tumor = f"{hist_fp}/{tumor_id}.hist.tsv"
        unzipped_normal = f"{hist_fp}/{normal_id}.hist.tsv"
        output_file = f"{output_fp}/{patient_id}"
        # script.write(f"mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/{patient_id}.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/\n")
        script.write(f"/home/avraham/MSMuTect_4/msmutect.sh -N {unzipped_normal} "
                     f"-T {unzipped_tumor} --from_file -O {output_file} -A -m\n")
        script.write(f"rm {unzipped_tumor}\n")
        script.write(f"rm {unzipped_normal}\n")
        script.write(f"gcloud storage cp {output_file}.full.mut.tsv gs://texas-bleeding/called_mutations\n")
        script.write(f"rm {output_file}.full.mut.tsv\n")




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
    # for current_fp in ["../principle_server/TCGA_controls_reshaped_corrected_with_file_sizes.csv", #GAIA: CHANGE
    #                    "../principle_server/SNVs_pipeline_MSI_reshaped_with_file_sizes.csv"]: #GAIA: CHANGE
    for current_fp in ["../../msi.csv",  # GAIA: CHANGE
                       "../../TCGA_WGS_list_reshaped_final.csv"]:  # GAIA: CHANGE
        with open(current_fp, 'r') as croc:
            lines = croc.readlines()
        for l in lines[1:]:
            split_line = l.split(",")
            tumor = split_line[1]
            normal = split_line[4]
            if tumor in completed_text and normal in completed_text:
                write_script(split_line[0], tumor, normal)


def all_cases():
    patients = []
    cases = defaultdict(int)
    for current_fp in ["../msi2.csv",  # GAIA: CHANGE
                       "../mss2.csv"]:  # GAIA: CHANGE
        with open(current_fp, 'r') as croc:
            lines = croc.readlines()
        for l in lines[1:]:
            split_line = l.split(",")
            tcga_id = split_line[0].replace('\"', '').rstrip()
            tumor = split_line[1].replace('\"', '').rstrip()
            normal = split_line[2].replace('\"', '').rstrip()

            if cases[tcga_id]==0:
                tcga_id_wr = tcga_id
            else:
                tcga_id_wr = tcga_id+f"_{cases[tcga_id]}"

            cases[tcga_id]+=1
            patients.append(Patient(tcga_id_wr, tumor, normal))

    for p in patients:
        write_script(p.case_id, p.tumor, p.normal)


if __name__ == '__main__':
    all_cases()