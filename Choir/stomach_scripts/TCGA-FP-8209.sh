#!/bin/bash
unzip d3815af4-519d-485b-b1f5-d7e1dda3d306.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 874a54a1-1ee3-46d6-8b78-59170a81f111.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm d3815af4-519d-485b-b1f5-d7e1dda3d306.zip
rm 874a54a1-1ee3-46d6-8b78-59170a81f111.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-FP-8209.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/874a54a1-1ee3-46d6-8b78-59170a81f111.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d3815af4-519d-485b-b1f5-d7e1dda3d306.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-FP-8209 -m