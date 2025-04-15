from dataclasses import dataclass
from principle_server.db_utils import Sample, add_samples_to_db


def classify_samples():
    with open("completed_samples.txt", 'r') as croc:
        samples = [e.strip() for e in croc.readlines()]

    with open("SNVs_pipeline_MSI_reshaped_with_file_sizes.csv", 'r') as msi:
        msi_text = msi.read()


    with open("TCGA_controls_reshaped_corrected_with_file_sizes.csv", 'r') as mss:
        mss_text = mss.read()

    mss_num=0
    msi_num=0
    print(samples)
    for sample in samples:
        if sample in msi_text:
            msi_num+=1
        elif sample in mss_text:
            mss_num+=1
        else:
            print("Could not find " + sample)

    print(msi_num)
    print(mss_num)

@dataclass
class Patient:
    tumor_uuid: str
    tumor_size: int
    normal_uuid: str
    normal_size: int


def all_patients(fp: str):
    patients = []
    with open(fp, 'r') as patients_file:
        lines = patients_file.readlines()[1:]
    for l in lines:
        split_line = l.split(",")
        current = Patient(split_line[1], int(split_line[3]), split_line[4], int(split_line[6]))
        patients.append(current)
    return patients

def partially_completed_patients():
    with open("completed_samples.txt", 'r') as croc:
        samples = [e.strip() for e in croc.readlines()]
    completed_patients = []
    partial_patients = []
    samples_to_be_added = []
    tumor_c = 1
    normal_c = 1
    msi_patients = all_patients("SNVs_pipeline_MSI_reshaped_with_file_sizes.csv")
    mss_patients = all_patients("TCGA_controls_reshaped_corrected_with_file_sizes.csv")
    for patient in msi_patients+mss_patients:
        if patient.tumor_uuid in samples and patient.normal_uuid in samples:
            completed_patients.append(patient)
        elif patient.tumor_uuid in samples or patient.normal_uuid in samples:
            if patient.tumor_uuid in samples:
                tumor_c+=1
                sample = Sample(patient.normal_uuid, False, int(patient.normal_size))

            else:
                normal_c+=1
                sample = Sample(patient.tumor_uuid, False, int(patient.tumor_size))

            partial_patients.append(patient)
            samples_to_be_added.append(sample)
    print(completed_patients)
    print(partial_patients)
    print(tumor_c)
    print(normal_c)
    print(samples_to_be_added)
    # add_samples_to_db(samples_to_be_added)


# partially_completed_patients()
# 872be1dc-894c-4217-9620-891b56b9663e|0|207593089589|1|32168643043046
# 4edc2ea9-8a49-4052-a343-e339ce64e072|0|337183260873|1|32168643043046
classify_samples()
# add_samples_to_db([Sample("872be1dc-894c-4217-9620-891b56b9663e", False, 207593089589), Sample("4edc2ea9-8a49-4052-a343-e339ce64e072", False, 337183260873)])