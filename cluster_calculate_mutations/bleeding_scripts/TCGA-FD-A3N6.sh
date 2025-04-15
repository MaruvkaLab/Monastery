#!/bin/bash
unzip 701b21c6-80d4-4bdd-9089-2b72aff1c4e5.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 7328213a-8f96-4671-8c02-0bfbe361c070.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 701b21c6-80d4-4bdd-9089-2b72aff1c4e5.zip
rm 7328213a-8f96-4671-8c02-0bfbe361c070.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-FD-A3N6.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/7328213a-8f96-4671-8c02-0bfbe361c070.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/701b21c6-80d4-4bdd-9089-2b72aff1c4e5.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-FD-A3N6 -A -m