#!/bin/bash
unzip 5fe78023-b7d7-4601-9a4c-1f4257617770.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 92ff6554-8ab0-4e20-a44f-f369796f1804.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 5fe78023-b7d7-4601-9a4c-1f4257617770.zip
rm 92ff6554-8ab0-4e20-a44f-f369796f1804.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-A6-6137.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/92ff6554-8ab0-4e20-a44f-f369796f1804.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/5fe78023-b7d7-4601-9a4c-1f4257617770.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-A6-6137 -A -m