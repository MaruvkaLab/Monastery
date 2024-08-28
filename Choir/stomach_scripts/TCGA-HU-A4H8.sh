#!/bin/bash
unzip 0c10e017-6a38-465e-9e53-29f2d20725a4.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 2d51279d-9a30-493b-b216-8f9872ede6f2.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 0c10e017-6a38-465e-9e53-29f2d20725a4.zip
rm 2d51279d-9a30-493b-b216-8f9872ede6f2.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-A4H8.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/2d51279d-9a30-493b-b216-8f9872ede6f2.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0c10e017-6a38-465e-9e53-29f2d20725a4.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-A4H8 -m