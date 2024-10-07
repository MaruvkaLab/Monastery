#!/bin/bash
unzip b7220ad0-ab3c-4631-8df7-c9f8634c9e2a.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip b5ce6768-3306-4f57-83a9-fa8cc4081494.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm b7220ad0-ab3c-4631-8df7-c9f8634c9e2a.zip
rm b5ce6768-3306-4f57-83a9-fa8cc4081494.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CD-A4MH.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b5ce6768-3306-4f57-83a9-fa8cc4081494.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b7220ad0-ab3c-4631-8df7-c9f8634c9e2a.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CD-A4MH -m