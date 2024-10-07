#!/bin/bash
unzip a547898b-a7a9-45b6-a11b-614e551f2f0e.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip ab17cc10-218b-4788-ab88-68620d8a19ee.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm a547898b-a7a9-45b6-a11b-614e551f2f0e.zip
rm ab17cc10-218b-4788-ab88-68620d8a19ee.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8365.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ab17cc10-218b-4788-ab88-68620d8a19ee.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a547898b-a7a9-45b6-a11b-614e551f2f0e.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8365 -m