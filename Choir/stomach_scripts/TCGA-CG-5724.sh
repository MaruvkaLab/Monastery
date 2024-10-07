#!/bin/bash
unzip d102e95e-0d26-4440-ba3f-8bb78852b566.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip f7bb92d5-b541-4f29-945c-f76df723a632.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm d102e95e-0d26-4440-ba3f-8bb78852b566.zip
rm f7bb92d5-b541-4f29-945c-f76df723a632.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-5724.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/f7bb92d5-b541-4f29-945c-f76df723a632.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d102e95e-0d26-4440-ba3f-8bb78852b566.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-5724 -m