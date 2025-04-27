#!/bin/bash
unzip b4a6814c-7677-4317-885a-1345c7c1e32c.zip -d $1
unzip be916061-58c6-4e6d-81f3-7dcaaa121344.zip -d $1
rm b4a6814c-7677-4317-885a-1345c7c1e32c.zip
rm be916061-58c6-4e6d-81f3-7dcaaa121344.zip
$3 -N $1/be916061-58c6-4e6d-81f3-7dcaaa121344.hist.tsv -T $1/b4a6814c-7677-4317-885a-1345c7c1e32c.hist.tsv --from_file --integer -O $2/TCGA-OR-A5LB -A -m