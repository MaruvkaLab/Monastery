#!/bin/bash
unzip 87ec17f7-561b-4648-acba-830587f86ce8.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip acc34e86-9c5a-41b5-b678-9110e9d75629.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 87ec17f7-561b-4648-acba-830587f86ce8.zip
rm acc34e86-9c5a-41b5-b678-9110e9d75629.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D1-A17F.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/acc34e86-9c5a-41b5-b678-9110e9d75629.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/87ec17f7-561b-4648-acba-830587f86ce8.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D1-A17F -A -m