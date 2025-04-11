#!/bin/bash
unzip e76163f4-2fbf-4d7c-bc68-42f55af7229a.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip f49885dd-9cf1-4529-9dec-b47269eda96a.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm e76163f4-2fbf-4d7c-bc68-42f55af7229a.zip
rm f49885dd-9cf1-4529-9dec-b47269eda96a.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-A4QL.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/f49885dd-9cf1-4529-9dec-b47269eda96a.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/e76163f4-2fbf-4d7c-bc68-42f55af7229a.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-A4QL -m