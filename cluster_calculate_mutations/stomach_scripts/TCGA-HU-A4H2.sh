#!/bin/bash
unzip d5627861-45c8-4467-9450-c87ce9185b34.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 89f162ac-e857-4789-b30b-e6e912ed3297.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm d5627861-45c8-4467-9450-c87ce9185b34.zip
rm 89f162ac-e857-4789-b30b-e6e912ed3297.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-A4H2.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/89f162ac-e857-4789-b30b-e6e912ed3297.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d5627861-45c8-4467-9450-c87ce9185b34.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-A4H2 -m