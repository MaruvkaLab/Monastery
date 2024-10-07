#!/bin/bash
unzip 83db4795-e82b-4684-a896-57ce580b39de.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip ae210e67-a53c-4f10-9e51-a6001039cf2d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 83db4795-e82b-4684-a896-57ce580b39de.zip
rm ae210e67-a53c-4f10-9e51-a6001039cf2d.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-4292.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ae210e67-a53c-4f10-9e51-a6001039cf2d.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/83db4795-e82b-4684-a896-57ce580b39de.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-4292 -m