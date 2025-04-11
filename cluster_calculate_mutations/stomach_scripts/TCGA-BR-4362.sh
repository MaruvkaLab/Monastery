#!/bin/bash
unzip 923cc86a-b13b-494d-88a5-80ff4f9423a5.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a8bb92ae-1d11-4584-b2b4-5c4f2b8f8538.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 923cc86a-b13b-494d-88a5-80ff4f9423a5.zip
rm a8bb92ae-1d11-4584-b2b4-5c4f2b8f8538.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-4362.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a8bb92ae-1d11-4584-b2b4-5c4f2b8f8538.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/923cc86a-b13b-494d-88a5-80ff4f9423a5.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-4362 -m