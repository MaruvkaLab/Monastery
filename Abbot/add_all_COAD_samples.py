from Abbot.db_utils import Sample, add_samples_to_db


def main():
    with open("/home/avraham/MaruvkaLab/Texas/sample_management/analyzed/stad_analyzed.txt", 'r') as croc:
        lines = croc.readlines()
    ts = set()
    all_samps=[]
    for l in lines[1:]:
        split_line = l.split("\t")
        current_sample = Sample(split_line[2], bool(split_line[8]=="female"), int(split_line[4]))
        # if current_sample.uuid in ts:
        #     print("croc corcoc rocc \n\n\n\n\n\n\n\n\n\n\n\n")
        #     exit()
        # print(current_sample.uuid in ts)
        # print(f"UUID: {current_sample.uuid}, FEMALE: {current_sample.female}, SIZE: {current_sample.size}")
        all_samps.append(current_sample)
        ts.add(current_sample.uuid)
    add_samples_to_db(samples=all_samps)


if __name__ == '__main__':
    main()
