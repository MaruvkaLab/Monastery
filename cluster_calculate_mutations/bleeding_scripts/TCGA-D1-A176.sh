#!/bin/bash
unzip 1a2f35fa-8ab2-44ef-b3f5-2d2bb20e01bb.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip acae8096-146b-41fd-96e4-b86ba8c50946.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 1a2f35fa-8ab2-44ef-b3f5-2d2bb20e01bb.zip
rm acae8096-146b-41fd-96e4-b86ba8c50946.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D1-A176.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/acae8096-146b-41fd-96e4-b86ba8c50946.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1a2f35fa-8ab2-44ef-b3f5-2d2bb20e01bb.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D1-A176 -A -m