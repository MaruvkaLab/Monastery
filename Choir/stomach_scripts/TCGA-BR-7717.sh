#!/bin/bash
unzip b02362b7-9e9c-421c-9f43-12f3d188dd9e.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a525c29e-c746-41ee-8a8c-b7723987ad2a.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm b02362b7-9e9c-421c-9f43-12f3d188dd9e.zip
rm a525c29e-c746-41ee-8a8c-b7723987ad2a.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-7717.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a525c29e-c746-41ee-8a8c-b7723987ad2a.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b02362b7-9e9c-421c-9f43-12f3d188dd9e.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-7717 -m