#!/bin/bash
unzip 04b19c21-076e-4c90-9616-f9ddaf374dad.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 6cbbf5ae-072e-48f3-88a9-a4552b0728f7.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 04b19c21-076e-4c90-9616-f9ddaf374dad.zip
rm 6cbbf5ae-072e-48f3-88a9-a4552b0728f7.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CM-6168.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/6cbbf5ae-072e-48f3-88a9-a4552b0728f7.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/04b19c21-076e-4c90-9616-f9ddaf374dad.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CM-6168 -A -m