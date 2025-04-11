#!/bin/bash
unzip 954ff5e2-8c6b-4819-81e9-af172db7fb14.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 47c5e81a-f69e-490e-976f-d5b434a58a96.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 954ff5e2-8c6b-4819-81e9-af172db7fb14.zip
rm 47c5e81a-f69e-490e-976f-d5b434a58a96.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-4368.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/47c5e81a-f69e-490e-976f-d5b434a58a96.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/954ff5e2-8c6b-4819-81e9-af172db7fb14.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-4368 -m