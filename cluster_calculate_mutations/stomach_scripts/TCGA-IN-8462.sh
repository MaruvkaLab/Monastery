#!/bin/bash
unzip 098698a0-3107-49e3-9226-d6d105f195a1.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 009dcaf2-f6bb-415e-b088-6e852853b1a2.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 098698a0-3107-49e3-9226-d6d105f195a1.zip
rm 009dcaf2-f6bb-415e-b088-6e852853b1a2.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-IN-8462.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/009dcaf2-f6bb-415e-b088-6e852853b1a2.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/098698a0-3107-49e3-9226-d6d105f195a1.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-IN-8462 -m