#!/bin/bash
unzip ccdf5303-dc08-4ffd-bec7-17ea1c998cd9.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 790a0a86-3c25-4570-91b2-f99d47486a58.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm ccdf5303-dc08-4ffd-bec7-17ea1c998cd9.zip
rm 790a0a86-3c25-4570-91b2-f99d47486a58.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-5578.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/790a0a86-3c25-4570-91b2-f99d47486a58.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ccdf5303-dc08-4ffd-bec7-17ea1c998cd9.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-5578 -m