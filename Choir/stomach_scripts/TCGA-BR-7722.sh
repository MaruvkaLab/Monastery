#!/bin/bash
unzip c515b598-73cf-4419-a5e3-23e12ab77289.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 0f14c3c3-d2f5-48d9-b0e1-4b58586abbe4.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm c515b598-73cf-4419-a5e3-23e12ab77289.zip
rm 0f14c3c3-d2f5-48d9-b0e1-4b58586abbe4.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-7722.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0f14c3c3-d2f5-48d9-b0e1-4b58586abbe4.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/c515b598-73cf-4419-a5e3-23e12ab77289.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-7722 -m