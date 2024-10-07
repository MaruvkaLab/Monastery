#!/bin/bash
unzip 39771308-7e6a-4b6c-b037-640fde7c41f1.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 344d261d-549e-4a86-9ca0-59e29b90e836.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 39771308-7e6a-4b6c-b037-640fde7c41f1.zip
rm 344d261d-549e-4a86-9ca0-59e29b90e836.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-4191.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/344d261d-549e-4a86-9ca0-59e29b90e836.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/39771308-7e6a-4b6c-b037-640fde7c41f1.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-4191 -m