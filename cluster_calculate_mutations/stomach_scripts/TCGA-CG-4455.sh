#!/bin/bash
unzip 9ebcef0d-5f96-48d3-96e8-75e02635df00.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a95c40b5-10a5-4777-b245-426266ed06b5.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 9ebcef0d-5f96-48d3-96e8-75e02635df00.zip
rm a95c40b5-10a5-4777-b245-426266ed06b5.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-4455.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a95c40b5-10a5-4777-b245-426266ed06b5.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/9ebcef0d-5f96-48d3-96e8-75e02635df00.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-4455 -m