#!/bin/bash
unzip 6b318004-0cb4-41d2-8a3a-dcdf0e1123be.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip fd4fd19b-2ea8-48a4-8bf4-67b478e0e73a.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 6b318004-0cb4-41d2-8a3a-dcdf0e1123be.zip
rm fd4fd19b-2ea8-48a4-8bf4-67b478e0e73a.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-4253.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/fd4fd19b-2ea8-48a4-8bf4-67b478e0e73a.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/6b318004-0cb4-41d2-8a3a-dcdf0e1123be.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-4253 -m