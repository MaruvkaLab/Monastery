#!/bin/bash
unzip b8dfbdd5-ee86-45a6-b648-1d75d0408c66.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip c2787c79-1ba1-4aab-98b6-96c2e79daff0.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm b8dfbdd5-ee86-45a6-b648-1d75d0408c66.zip
rm c2787c79-1ba1-4aab-98b6-96c2e79daff0.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-29-1690.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/c2787c79-1ba1-4aab-98b6-96c2e79daff0.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b8dfbdd5-ee86-45a6-b648-1d75d0408c66.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-29-1690 -A -m