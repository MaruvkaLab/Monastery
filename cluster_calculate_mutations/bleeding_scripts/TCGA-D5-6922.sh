#!/bin/bash
unzip cc9c617f-749d-4683-a066-a20c12e45dfc.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip dd9995b4-4ae3-4acf-aed6-ab3e36c5042e.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm cc9c617f-749d-4683-a066-a20c12e45dfc.zip
rm dd9995b4-4ae3-4acf-aed6-ab3e36c5042e.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D5-6922.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/dd9995b4-4ae3-4acf-aed6-ab3e36c5042e.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/cc9c617f-749d-4683-a066-a20c12e45dfc.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D5-6922 -A -m