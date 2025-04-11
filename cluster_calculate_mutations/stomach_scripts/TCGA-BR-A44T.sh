#!/bin/bash
unzip b04a6afe-8f99-4d3a-9ccf-fc5fc33d9bbd.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip cd853518-78e7-4bd8-8429-fb822407e146.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm b04a6afe-8f99-4d3a-9ccf-fc5fc33d9bbd.zip
rm cd853518-78e7-4bd8-8429-fb822407e146.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-A44T.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/cd853518-78e7-4bd8-8429-fb822407e146.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b04a6afe-8f99-4d3a-9ccf-fc5fc33d9bbd.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-A44T -m