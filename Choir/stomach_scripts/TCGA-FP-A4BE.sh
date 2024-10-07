#!/bin/bash
unzip b5dd1f00-d517-4283-a20b-9fb288e5e72f.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a89d90d7-b765-48ce-9556-827c0bb16f13.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm b5dd1f00-d517-4283-a20b-9fb288e5e72f.zip
rm a89d90d7-b765-48ce-9556-827c0bb16f13.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-FP-A4BE.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a89d90d7-b765-48ce-9556-827c0bb16f13.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b5dd1f00-d517-4283-a20b-9fb288e5e72f.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-FP-A4BE -m