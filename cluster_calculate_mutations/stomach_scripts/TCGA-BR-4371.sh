#!/bin/bash
unzip 3042ae6f-1ccd-473e-90f8-6991cc359398.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 34ea146a-92d0-4b08-a358-66450d056453.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 3042ae6f-1ccd-473e-90f8-6991cc359398.zip
rm 34ea146a-92d0-4b08-a358-66450d056453.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-4371.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/34ea146a-92d0-4b08-a358-66450d056453.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/3042ae6f-1ccd-473e-90f8-6991cc359398.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-4371 -m