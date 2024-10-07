#!/bin/bash
unzip 337c12c4-9939-459b-803b-692c661edd09.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 337ddd57-b160-463a-aa40-bc4b45f79c46.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 337c12c4-9939-459b-803b-692c661edd09.zip
rm 337ddd57-b160-463a-aa40-bc4b45f79c46.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8058.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/337ddd57-b160-463a-aa40-bc4b45f79c46.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/337c12c4-9939-459b-803b-692c661edd09.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8058 -m