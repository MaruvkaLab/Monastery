#!/bin/bash
unzip b4a6814c-7677-4317-885a-1345c7c1e32c.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip be916061-58c6-4e6d-81f3-7dcaaa121344.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm b4a6814c-7677-4317-885a-1345c7c1e32c.zip
rm be916061-58c6-4e6d-81f3-7dcaaa121344.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-OR-A5LB.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/be916061-58c6-4e6d-81f3-7dcaaa121344.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b4a6814c-7677-4317-885a-1345c7c1e32c.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-OR-A5LB -A -m