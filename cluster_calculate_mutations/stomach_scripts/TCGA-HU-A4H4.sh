#!/bin/bash
unzip 23066e2f-efcf-46d1-ab5f-d81c6cd43eb6.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a2c61ede-a870-47eb-a4b4-499bf1a03ed9.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 23066e2f-efcf-46d1-ab5f-d81c6cd43eb6.zip
rm a2c61ede-a870-47eb-a4b4-499bf1a03ed9.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-A4H4.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a2c61ede-a870-47eb-a4b4-499bf1a03ed9.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/23066e2f-efcf-46d1-ab5f-d81c6cd43eb6.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-A4H4 -m