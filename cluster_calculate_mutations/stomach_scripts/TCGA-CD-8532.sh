#!/bin/bash
unzip 3a70c723-075d-47a4-a24f-0e1cc4131920.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 57f5ede9-47d5-4c7f-8c8f-28641998e0b0.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 3a70c723-075d-47a4-a24f-0e1cc4131920.zip
rm 57f5ede9-47d5-4c7f-8c8f-28641998e0b0.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CD-8532.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/57f5ede9-47d5-4c7f-8c8f-28641998e0b0.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/3a70c723-075d-47a4-a24f-0e1cc4131920.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CD-8532 -m