#!/bin/bash
unzip 0195768c-6c9c-4500-b36a-8e39947388fd.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip eecbcda5-d913-4bb4-97a5-70eda002d5f0.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 0195768c-6c9c-4500-b36a-8e39947388fd.zip
rm eecbcda5-d913-4bb4-97a5-70eda002d5f0.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-A4CR.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/eecbcda5-d913-4bb4-97a5-70eda002d5f0.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0195768c-6c9c-4500-b36a-8e39947388fd.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-A4CR -m