#!/bin/bash
unzip 704e8289-1304-4c5c-bcdb-845a8ab43457.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 8a814159-7472-4df7-8233-b10e454cd762.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 704e8289-1304-4c5c-bcdb-845a8ab43457.zip
rm 8a814159-7472-4df7-8233-b10e454cd762.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8286.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/8a814159-7472-4df7-8233-b10e454cd762.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/704e8289-1304-4c5c-bcdb-845a8ab43457.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8286 -m