#!/bin/bash
unzip 18a02cfd-1f27-4aaa-bb5d-d945a6aa51f2.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 2d39530f-062c-4bcf-88d5-7df325fe7515.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 18a02cfd-1f27-4aaa-bb5d-d945a6aa51f2.zip
rm 2d39530f-062c-4bcf-88d5-7df325fe7515.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-A4IU.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/2d39530f-062c-4bcf-88d5-7df325fe7515.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/18a02cfd-1f27-4aaa-bb5d-d945a6aa51f2.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-A4IU -m