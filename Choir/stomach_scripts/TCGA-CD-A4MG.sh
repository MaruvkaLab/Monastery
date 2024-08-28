#!/bin/bash
unzip 49b1c65c-1896-4372-8724-e8a61cbe1872.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip f5fa42a0-5f84-4052-8343-89d310e7ce23.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 49b1c65c-1896-4372-8724-e8a61cbe1872.zip
rm f5fa42a0-5f84-4052-8343-89d310e7ce23.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CD-A4MG.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/f5fa42a0-5f84-4052-8343-89d310e7ce23.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/49b1c65c-1896-4372-8724-e8a61cbe1872.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CD-A4MG -m