#!/bin/bash
unzip 6e4d7602-8f81-443f-ade8-c35026c39ef3.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip d715c6bf-60b4-4696-98d3-9ac0dd3b9c32.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 6e4d7602-8f81-443f-ade8-c35026c39ef3.zip
rm d715c6bf-60b4-4696-98d3-9ac0dd3b9c32.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-R5-A805.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d715c6bf-60b4-4696-98d3-9ac0dd3b9c32.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/6e4d7602-8f81-443f-ade8-c35026c39ef3.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-R5-A805 -m