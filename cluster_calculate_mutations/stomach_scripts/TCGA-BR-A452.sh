#!/bin/bash
unzip 3d26ad63-f0d1-4421-82fa-e8501214fcfb.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip ed885a48-84da-4945-b12c-3ff7034de4e6.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 3d26ad63-f0d1-4421-82fa-e8501214fcfb.zip
rm ed885a48-84da-4945-b12c-3ff7034de4e6.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-A452.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ed885a48-84da-4945-b12c-3ff7034de4e6.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/3d26ad63-f0d1-4421-82fa-e8501214fcfb.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-A452 -m