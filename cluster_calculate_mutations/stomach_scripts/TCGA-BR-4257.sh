#!/bin/bash
unzip e21b0fa5-1290-4069-a74b-86e78a3671ab.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 2f79e846-cec4-4591-8efe-ed9f15808514.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm e21b0fa5-1290-4069-a74b-86e78a3671ab.zip
rm 2f79e846-cec4-4591-8efe-ed9f15808514.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-4257.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/2f79e846-cec4-4591-8efe-ed9f15808514.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/e21b0fa5-1290-4069-a74b-86e78a3671ab.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-4257 -m