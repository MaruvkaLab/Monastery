#!/bin/bash
unzip 97705516-f4e8-45f0-b8d2-99d40bc827ce.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 7028ae3b-e975-4ef5-ac60-7aa46d702f91.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 97705516-f4e8-45f0-b8d2-99d40bc827ce.zip
rm 7028ae3b-e975-4ef5-ac60-7aa46d702f91.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-6455.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/7028ae3b-e975-4ef5-ac60-7aa46d702f91.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/97705516-f4e8-45f0-b8d2-99d40bc827ce.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-6455 -m