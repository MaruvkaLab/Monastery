#!/bin/bash
unzip 64fcc2ac-9b65-4779-b49d-32846b7e7b5e.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 2ac7e87c-c354-4ef8-a6b1-d092cf44b563.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 64fcc2ac-9b65-4779-b49d-32846b7e7b5e.zip
rm 2ac7e87c-c354-4ef8-a6b1-d092cf44b563.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-8602.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/2ac7e87c-c354-4ef8-a6b1-d092cf44b563.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/64fcc2ac-9b65-4779-b49d-32846b7e7b5e.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-8602 -A -m