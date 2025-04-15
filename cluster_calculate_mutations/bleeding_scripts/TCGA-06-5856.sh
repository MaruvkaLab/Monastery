#!/bin/bash
unzip 494685b0-c051-4be5-bc7a-7ea7777fd024.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 65a6f99f-223e-4ac6-82da-c555ebac6899.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 494685b0-c051-4be5-bc7a-7ea7777fd024.zip
rm 65a6f99f-223e-4ac6-82da-c555ebac6899.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-06-5856.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/65a6f99f-223e-4ac6-82da-c555ebac6899.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/494685b0-c051-4be5-bc7a-7ea7777fd024.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-06-5856 -A -m