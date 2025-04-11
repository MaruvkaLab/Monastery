#!/bin/bash
unzip c4a15bb2-8c26-486b-8d95-c47114593c30.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 0c295821-e1a4-468f-b05b-6d11f4ebae76.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm c4a15bb2-8c26-486b-8d95-c47114593c30.zip
rm 0c295821-e1a4-468f-b05b-6d11f4ebae76.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8361.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0c295821-e1a4-468f-b05b-6d11f4ebae76.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/c4a15bb2-8c26-486b-8d95-c47114593c30.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8361 -m