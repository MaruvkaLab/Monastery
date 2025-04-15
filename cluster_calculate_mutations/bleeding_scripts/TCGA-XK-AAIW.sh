#!/bin/bash
unzip 3f398914-15f7-4321-b02b-809d0d8d2f3e.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 9970f49f-2f0d-4cf3-9032-23f27b168dae.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 3f398914-15f7-4321-b02b-809d0d8d2f3e.zip
rm 9970f49f-2f0d-4cf3-9032-23f27b168dae.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-XK-AAIW.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/9970f49f-2f0d-4cf3-9032-23f27b168dae.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/3f398914-15f7-4321-b02b-809d0d8d2f3e.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-XK-AAIW -A -m