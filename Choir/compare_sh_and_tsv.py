

def create_set(fp: str, suffix: int):
    ret = set()
    with open(fp, 'r') as croc:
        a=croc.readlines()
    for l in a:
        ret.add(l[:-suffix])
        # print(l[:-suffix])
    return ret

ran_set = create_set("already_ran.txt", 4)
results_set = create_set("already_results.txt", 14)
for r in ran_set:
    if r not in results_set:
        print(r)
