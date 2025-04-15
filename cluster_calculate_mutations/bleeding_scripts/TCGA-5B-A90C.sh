#!/bin/bash
unzip 8326d116-de0f-4a1a-a74f-8c865c7545e1.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 4faaf477-01e3-43ac-8dc4-8533b1a17ed7.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 8326d116-de0f-4a1a-a74f-8c865c7545e1.zip
rm 4faaf477-01e3-43ac-8dc4-8533b1a17ed7.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-5B-A90C.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4faaf477-01e3-43ac-8dc4-8533b1a17ed7.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/8326d116-de0f-4a1a-a74f-8c865c7545e1.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-5B-A90C -A -m