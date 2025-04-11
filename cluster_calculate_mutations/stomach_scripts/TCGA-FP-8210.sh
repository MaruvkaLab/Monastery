#!/bin/bash
unzip 25175ec6-24fd-499b-8f22-9d74ee2c3687.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 885546b3-56de-4177-b45f-34ec5715c178.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 25175ec6-24fd-499b-8f22-9d74ee2c3687.zip
rm 885546b3-56de-4177-b45f-34ec5715c178.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-FP-8210.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/885546b3-56de-4177-b45f-34ec5715c178.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/25175ec6-24fd-499b-8f22-9d74ee2c3687.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-FP-8210 -m