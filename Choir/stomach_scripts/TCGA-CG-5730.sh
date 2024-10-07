#!/bin/bash
unzip 552cc749-7926-4968-a6a9-b5e7edd69eea.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip de802c10-535b-4e49-8ef1-e2a5d57f3478.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 552cc749-7926-4968-a6a9-b5e7edd69eea.zip
rm de802c10-535b-4e49-8ef1-e2a5d57f3478.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-5730.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/de802c10-535b-4e49-8ef1-e2a5d57f3478.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/552cc749-7926-4968-a6a9-b5e7edd69eea.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-5730 -m