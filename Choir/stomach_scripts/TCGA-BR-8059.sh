#!/bin/bash
unzip 7de3f8d5-7e11-4ce6-9f1d-1f3e6777dd78.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 141c9837-ab86-4d0c-b92b-8dccc2cffc09.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 7de3f8d5-7e11-4ce6-9f1d-1f3e6777dd78.zip
rm 141c9837-ab86-4d0c-b92b-8dccc2cffc09.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8059.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/141c9837-ab86-4d0c-b92b-8dccc2cffc09.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/7de3f8d5-7e11-4ce6-9f1d-1f3e6777dd78.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8059 -m