#!/bin/bash
unzip a16f6b29-989f-4a3b-9e9b-132c7a9d87d0.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 1f98fd62-8c4a-4701-9f6c-692b902bf5b6.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm a16f6b29-989f-4a3b-9e9b-132c7a9d87d0.zip
rm 1f98fd62-8c4a-4701-9f6c-692b902bf5b6.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-A4GD.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1f98fd62-8c4a-4701-9f6c-692b902bf5b6.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a16f6b29-989f-4a3b-9e9b-132c7a9d87d0.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-A4GD -m