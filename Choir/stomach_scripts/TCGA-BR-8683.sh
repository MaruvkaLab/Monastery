#!/bin/bash
unzip 38b2b60a-07b8-44ac-a09c-4aca76e2ebfb.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 29847996-3572-4605-9dd1-aeb91b9c7f93.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 38b2b60a-07b8-44ac-a09c-4aca76e2ebfb.zip
rm 29847996-3572-4605-9dd1-aeb91b9c7f93.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8683.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/29847996-3572-4605-9dd1-aeb91b9c7f93.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/38b2b60a-07b8-44ac-a09c-4aca76e2ebfb.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8683 -m