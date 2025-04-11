

class ThreadWork:
    def __init__(self):
        self.vals = []

    def total_val(self):
        return sum(self.vals)

    def assign(self, num: int):
        self.vals.append()

def list_min_idx(l):
    m = min(l)
    return l.index(m)

def main():
    containers = [0 for i in range(8)]
    nums = [30, 30, 34, 45, 56, 59, 62, 64, 86, 88, 90, 95, 98, 99, 100, 111, 130, 240, 240]

    nums_sorted = sorted(nums, reverse=True)
    for n in nums_sorted:
        min_idx = list_min_idx(containers)
        print(min_idx)
        containers[min_idx]+=n
    print(containers)

if __name__ == '__main__':
    main()