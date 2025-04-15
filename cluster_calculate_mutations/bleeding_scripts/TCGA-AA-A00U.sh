#!/bin/bash
unzip 4b9f9905-c516-41f6-a967-a1bc6beb000d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 18374135-b64c-4f35-a803-89f29bd32a7e.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 4b9f9905-c516-41f6-a967-a1bc6beb000d.zip
rm 18374135-b64c-4f35-a803-89f29bd32a7e.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-AA-A00U.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/18374135-b64c-4f35-a803-89f29bd32a7e.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4b9f9905-c516-41f6-a967-a1bc6beb000d.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-AA-A00U -A -m