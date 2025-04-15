#!/bin/bash
unzip 5699121c-beb4-403f-a102-47b26a5d0601.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a530efb1-744c-4646-8b9d-331b5f68bb33.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 5699121c-beb4-403f-a102-47b26a5d0601.zip
rm a530efb1-744c-4646-8b9d-331b5f68bb33.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-A6-6654.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a530efb1-744c-4646-8b9d-331b5f68bb33.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/5699121c-beb4-403f-a102-47b26a5d0601.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-A6-6654 -A -m