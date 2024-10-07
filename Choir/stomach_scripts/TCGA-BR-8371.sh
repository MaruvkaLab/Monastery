#!/bin/bash
unzip ee863a71-1145-47aa-a845-16f700d5cb91.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 9b8e00e1-d628-43cb-be79-afe8519ad168.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm ee863a71-1145-47aa-a845-16f700d5cb91.zip
rm 9b8e00e1-d628-43cb-be79-afe8519ad168.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8371.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/9b8e00e1-d628-43cb-be79-afe8519ad168.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ee863a71-1145-47aa-a845-16f700d5cb91.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8371 -m