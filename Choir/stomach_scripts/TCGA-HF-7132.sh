#!/bin/bash
unzip 0d0f6d46-275f-4bb5-a2e4-4032ba1c269f.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 818c7fdd-022b-47af-bb64-18e27ccfb739.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 0d0f6d46-275f-4bb5-a2e4-4032ba1c269f.zip
rm 818c7fdd-022b-47af-bb64-18e27ccfb739.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HF-7132.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/818c7fdd-022b-47af-bb64-18e27ccfb739.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0d0f6d46-275f-4bb5-a2e4-4032ba1c269f.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HF-7132 -m