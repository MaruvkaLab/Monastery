#!/bin/bash
unzip 3a098ea8-81d4-4e77-a4f5-1f07e7a794eb.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 0d2e4446-be90-4dba-a101-bbd5f54108bc.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 3a098ea8-81d4-4e77-a4f5-1f07e7a794eb.zip
rm 0d2e4446-be90-4dba-a101-bbd5f54108bc.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-6705.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0d2e4446-be90-4dba-a101-bbd5f54108bc.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/3a098ea8-81d4-4e77-a4f5-1f07e7a794eb.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-6705 -m