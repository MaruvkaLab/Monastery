#!/bin/bash
unzip 0418aeac-05d2-4063-85de-20b8d125be40.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 64427c20-9fde-424d-a9c5-03608aca1990.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 0418aeac-05d2-4063-85de-20b8d125be40.zip
rm 64427c20-9fde-424d-a9c5-03608aca1990.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-A4GY.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/64427c20-9fde-424d-a9c5-03608aca1990.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0418aeac-05d2-4063-85de-20b8d125be40.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-A4GY -m