#!/bin/bash
unzip 566842f8-cec3-470b-857c-c0ab7a5932fd.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 939c5598-8f65-4cee-b98f-a109ae59a06f.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 566842f8-cec3-470b-857c-c0ab7a5932fd.zip
rm 939c5598-8f65-4cee-b98f-a109ae59a06f.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-A4YY.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/939c5598-8f65-4cee-b98f-a109ae59a06f.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/566842f8-cec3-470b-857c-c0ab7a5932fd.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-A4YY -A -m