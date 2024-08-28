#!/bin/bash
unzip 60b8932d-bb9c-480c-8513-04e1d9371b64.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip fffd9814-1c04-4bab-aac4-f35c93ffdf8f.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 60b8932d-bb9c-480c-8513-04e1d9371b64.zip
rm fffd9814-1c04-4bab-aac4-f35c93ffdf8f.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-6453.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/fffd9814-1c04-4bab-aac4-f35c93ffdf8f.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/60b8932d-bb9c-480c-8513-04e1d9371b64.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-6453 -m