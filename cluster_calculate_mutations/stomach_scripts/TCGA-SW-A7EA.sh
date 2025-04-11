#!/bin/bash
unzip 7aaf95f6-36ac-4cab-be41-1404a802a3ec.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip e89c4bc7-4980-4b8d-9eca-4ad925280e62.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 7aaf95f6-36ac-4cab-be41-1404a802a3ec.zip
rm e89c4bc7-4980-4b8d-9eca-4ad925280e62.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-SW-A7EA.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/e89c4bc7-4980-4b8d-9eca-4ad925280e62.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/7aaf95f6-36ac-4cab-be41-1404a802a3ec.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-SW-A7EA -m