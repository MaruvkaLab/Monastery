#!/bin/bash
unzip 73b42f65-adfa-42d4-92cc-82c62f559bf1.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 7cfc99d5-3e64-4b6e-8abb-4a127d4e5700.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 73b42f65-adfa-42d4-92cc-82c62f559bf1.zip
rm 7cfc99d5-3e64-4b6e-8abb-4a127d4e5700.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BH-A18G.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/7cfc99d5-3e64-4b6e-8abb-4a127d4e5700.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/73b42f65-adfa-42d4-92cc-82c62f559bf1.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BH-A18G -A -m