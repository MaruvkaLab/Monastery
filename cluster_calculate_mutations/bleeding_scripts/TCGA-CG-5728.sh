#!/bin/bash
unzip edeae43b-933a-4968-9fef-a5f5b103e73b.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 14424e27-f38f-485e-898b-92c760790156.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm edeae43b-933a-4968-9fef-a5f5b103e73b.zip
rm 14424e27-f38f-485e-898b-92c760790156.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-5728.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/14424e27-f38f-485e-898b-92c760790156.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/edeae43b-933a-4968-9fef-a5f5b103e73b.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-5728 -A -m