#!/bin/bash
unzip 50115bee-b25c-4360-a8e7-a493e195b089.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 620198f9-232e-4784-b986-d3ca0e63e2e9.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 50115bee-b25c-4360-a8e7-a493e195b089.zip
rm 620198f9-232e-4784-b986-d3ca0e63e2e9.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CD-5802.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/620198f9-232e-4784-b986-d3ca0e63e2e9.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/50115bee-b25c-4360-a8e7-a493e195b089.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CD-5802 -m