#!/bin/bash
unzip 3eab3339-a155-4003-b694-0ddd719dc9a0.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 6299e626-a943-4dea-9cc0-fb6b1dd9cc56.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 3eab3339-a155-4003-b694-0ddd719dc9a0.zip
rm 6299e626-a943-4dea-9cc0-fb6b1dd9cc56.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-6525.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/6299e626-a943-4dea-9cc0-fb6b1dd9cc56.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/3eab3339-a155-4003-b694-0ddd719dc9a0.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-6525 -m