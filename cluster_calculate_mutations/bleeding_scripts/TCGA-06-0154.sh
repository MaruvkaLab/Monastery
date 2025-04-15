#!/bin/bash
unzip 316aafcf-3bde-42c4-841e-3b96c31327f4.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 2b1c45b6-d155-4e3c-8962-dccc24818bff.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 316aafcf-3bde-42c4-841e-3b96c31327f4.zip
rm 2b1c45b6-d155-4e3c-8962-dccc24818bff.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-06-0154.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/2b1c45b6-d155-4e3c-8962-dccc24818bff.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/316aafcf-3bde-42c4-841e-3b96c31327f4.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-06-0154 -A -m