#!/bin/bash
unzip 9cf78da8-0b0a-4450-a542-75f498bdd652.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 49d0f835-b035-465f-a3ea-dcb34dcb8ff5.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 9cf78da8-0b0a-4450-a542-75f498bdd652.zip
rm 49d0f835-b035-465f-a3ea-dcb34dcb8ff5.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-6457.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/49d0f835-b035-465f-a3ea-dcb34dcb8ff5.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/9cf78da8-0b0a-4450-a542-75f498bdd652.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-6457 -m