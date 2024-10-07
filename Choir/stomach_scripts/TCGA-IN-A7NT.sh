#!/bin/bash
unzip bf612b2c-9792-433d-9841-fb93555e0d09.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip ad9d5198-a712-4b41-bda1-07d6f5d4baf5.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm bf612b2c-9792-433d-9841-fb93555e0d09.zip
rm ad9d5198-a712-4b41-bda1-07d6f5d4baf5.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-IN-A7NT.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ad9d5198-a712-4b41-bda1-07d6f5d4baf5.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/bf612b2c-9792-433d-9841-fb93555e0d09.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-IN-A7NT -m