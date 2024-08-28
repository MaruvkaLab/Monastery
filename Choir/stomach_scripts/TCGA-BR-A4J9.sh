#!/bin/bash
unzip 1bfd7848-0a4b-4b17-b8fe-cab6f0688b70.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 4fd9be1e-fa36-42d8-8c97-acc84fbb7eb3.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 1bfd7848-0a4b-4b17-b8fe-cab6f0688b70.zip
rm 4fd9be1e-fa36-42d8-8c97-acc84fbb7eb3.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-A4J9.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4fd9be1e-fa36-42d8-8c97-acc84fbb7eb3.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1bfd7848-0a4b-4b17-b8fe-cab6f0688b70.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-A4J9 -m