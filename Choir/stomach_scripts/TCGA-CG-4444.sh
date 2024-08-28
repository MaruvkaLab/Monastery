#!/bin/bash
unzip ff79752d-dc12-43d9-896b-32d235f19b49.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip fe10d5e8-9f0b-413e-aa34-29d6e3a9f5b7.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm ff79752d-dc12-43d9-896b-32d235f19b49.zip
rm fe10d5e8-9f0b-413e-aa34-29d6e3a9f5b7.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-4444.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/fe10d5e8-9f0b-413e-aa34-29d6e3a9f5b7.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ff79752d-dc12-43d9-896b-32d235f19b49.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-4444 -m