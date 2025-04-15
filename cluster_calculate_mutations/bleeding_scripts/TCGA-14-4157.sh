#!/bin/bash
unzip 1bf35eb1-c434-4212-bc0b-6c078278eb38.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 70792eff-7a76-4e5a-990c-be80854e6fc8.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 1bf35eb1-c434-4212-bc0b-6c078278eb38.zip
rm 70792eff-7a76-4e5a-990c-be80854e6fc8.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-14-4157.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/70792eff-7a76-4e5a-990c-be80854e6fc8.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1bf35eb1-c434-4212-bc0b-6c078278eb38.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-14-4157 -A -m