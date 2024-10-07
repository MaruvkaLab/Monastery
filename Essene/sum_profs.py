from typing import List


def translate_hrs(hr_time: str):
    # hr_time = hr_time.strip()
    hr_time = hr_time.strip()
    first_colon = hr_time.find(":")
    hrs = hr_time[:first_colon]
    second_colon = hr_time.find(":", first_colon+1)
    # third_colon = hr_time.find(":", second_colon+1)
    mins = hr_time[first_colon+1:second_colon]
    # print(hr_time)
    # print(hrs)
    # print(mins)
    # print("***")
    return int(hrs)*60+int(mins)

def list_min_idx(l):
    m = min(l)
    return l.index(m)

def split_nums_evenly(nums: List[int], num_containers: int):
    containers = [0 for i in range(num_containers)]

    nums_sorted = sorted(nums, reverse=True)
    for n in nums_sorted:
        min_idx = list_min_idx(containers)
        containers[min_idx]+=n
    return containers


with open("profs.txt", 'r') as croc:
    a=croc.readlines()


a=a[:20]
time_entries = [translate_hrs(hr) for hr in a]
time_entries+=[13, 36, 52]
for t in time_entries:
    print(t)
entries = split_nums_evenly(time_entries, 8)
print(sum(entries))
print(max(entries)-min(entries))
print((max(entries)-min(entries))/sum(entries))

