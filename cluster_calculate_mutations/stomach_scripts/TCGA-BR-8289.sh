#!/bin/bash
unzip 2afbf702-c620-42d6-8b50-5d2c342fc840.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 4f070f62-39a4-4429-ad20-e3be784cfece.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 2afbf702-c620-42d6-8b50-5d2c342fc840.zip
rm 4f070f62-39a4-4429-ad20-e3be784cfece.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8289.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4f070f62-39a4-4429-ad20-e3be784cfece.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/2afbf702-c620-42d6-8b50-5d2c342fc840.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8289 -m