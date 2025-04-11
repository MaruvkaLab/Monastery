#!/bin/bash
unzip 215c2d15-fdff-4920-899e-562528cd6089.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 79f9a83f-c5a1-4011-a6da-8781d754a594.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 215c2d15-fdff-4920-899e-562528cd6089.zip
rm 79f9a83f-c5a1-4011-a6da-8781d754a594.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-4438.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/79f9a83f-c5a1-4011-a6da-8781d754a594.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/215c2d15-fdff-4920-899e-562528cd6089.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-4438 -m