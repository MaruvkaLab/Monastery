#!/bin/bash
unzip 3c8c5950-28be-483b-aad3-ee15d516137b.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip f8b2c915-e57d-4729-ad12-97db3c0a1e5e.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 3c8c5950-28be-483b-aad3-ee15d516137b.zip
rm f8b2c915-e57d-4729-ad12-97db3c0a1e5e.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-5733.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/f8b2c915-e57d-4729-ad12-97db3c0a1e5e.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/3c8c5950-28be-483b-aad3-ee15d516137b.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-5733 -m