#!/bin/bash
unzip 039c63ff-a5e6-4865-8d30-db084aa01d00.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 14141cac-5f56-4c47-a2f0-6f14d1e6d545.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 039c63ff-a5e6-4865-8d30-db084aa01d00.zip
rm 14141cac-5f56-4c47-a2f0-6f14d1e6d545.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-G4-6320.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/14141cac-5f56-4c47-a2f0-6f14d1e6d545.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/039c63ff-a5e6-4865-8d30-db084aa01d00.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-G4-6320 -A -m