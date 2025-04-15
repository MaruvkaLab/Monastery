#!/bin/bash
unzip 1e39fc34-7f76-4f69-a15e-89467b59f941.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 2992e063-827b-4c26-9e09-6fa87aa36eff.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 1e39fc34-7f76-4f69-a15e-89467b59f941.zip
rm 2992e063-827b-4c26-9e09-6fa87aa36eff.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-A4PD.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/2992e063-827b-4c26-9e09-6fa87aa36eff.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1e39fc34-7f76-4f69-a15e-89467b59f941.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-A4PD -A -m