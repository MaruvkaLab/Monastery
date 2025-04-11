#!/bin/bash
unzip ee5eae3f-0d3a-4b72-b887-82e7525d0ed7.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 353a3417-5b77-4236-a0eb-e098d6cc32dc.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm ee5eae3f-0d3a-4b72-b887-82e7525d0ed7.zip
rm 353a3417-5b77-4236-a0eb-e098d6cc32dc.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-FP-7998.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/353a3417-5b77-4236-a0eb-e098d6cc32dc.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ee5eae3f-0d3a-4b72-b887-82e7525d0ed7.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-FP-7998 -m