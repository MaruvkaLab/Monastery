#!/bin/bash
unzip 8800a39d-6162-45cd-8a30-c8ce99e7a44d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 3bc0366c-3b42-47dc-b8f4-fcf507d22f24.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 8800a39d-6162-45cd-8a30-c8ce99e7a44d.zip
rm 3bc0366c-3b42-47dc-b8f4-fcf507d22f24.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-R5-A7ZE.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/3bc0366c-3b42-47dc-b8f4-fcf507d22f24.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/8800a39d-6162-45cd-8a30-c8ce99e7a44d.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-R5-A7ZE -m