#!/bin/bash
unzip ce6ea6e8-472b-4932-9683-b9695b845e0e.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 4e4fdb28-f321-4a31-b4fd-ee9a8f58994c.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm ce6ea6e8-472b-4932-9683-b9695b845e0e.zip
rm 4e4fdb28-f321-4a31-b4fd-ee9a8f58994c.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-IB-7647.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4e4fdb28-f321-4a31-b4fd-ee9a8f58994c.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ce6ea6e8-472b-4932-9683-b9695b845e0e.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-IB-7647 -A -m