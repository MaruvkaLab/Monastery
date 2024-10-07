#!/bin/bash
unzip 2b717f01-fe60-403b-9c9d-326da8e99d1d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 6548e1cb-3e72-482d-b07a-1a87c60ef9d7.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 2b717f01-fe60-403b-9c9d-326da8e99d1d.zip
rm 6548e1cb-3e72-482d-b07a-1a87c60ef9d7.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-VQ-A8PK.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/6548e1cb-3e72-482d-b07a-1a87c60ef9d7.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/2b717f01-fe60-403b-9c9d-326da8e99d1d.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-VQ-A8PK -m