#!/bin/bash
unzip 4abd816b-2a1b-4f72-810b-0d7e916aec48.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a411ff51-6aaf-4249-b183-4b5f857578b6.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 4abd816b-2a1b-4f72-810b-0d7e916aec48.zip
rm a411ff51-6aaf-4249-b183-4b5f857578b6.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-7901.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a411ff51-6aaf-4249-b183-4b5f857578b6.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4abd816b-2a1b-4f72-810b-0d7e916aec48.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-7901 -A -m