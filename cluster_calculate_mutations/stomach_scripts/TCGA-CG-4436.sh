#!/bin/bash
unzip 4ee8e5d2-ae3e-4d64-ac9f-bf7d938d7468.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 2320c5c6-c1dd-49b5-b3fa-f6d25f930bb7.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 4ee8e5d2-ae3e-4d64-ac9f-bf7d938d7468.zip
rm 2320c5c6-c1dd-49b5-b3fa-f6d25f930bb7.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-4436.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/2320c5c6-c1dd-49b5-b3fa-f6d25f930bb7.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4ee8e5d2-ae3e-4d64-ac9f-bf7d938d7468.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-4436 -m