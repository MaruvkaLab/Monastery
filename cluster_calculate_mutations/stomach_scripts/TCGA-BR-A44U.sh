#!/bin/bash
unzip 16a50bdc-81d5-448b-9f69-c52a3ae7dc97.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a4ca383e-a467-45fe-8c61-09747e7e6fd7.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 16a50bdc-81d5-448b-9f69-c52a3ae7dc97.zip
rm a4ca383e-a467-45fe-8c61-09747e7e6fd7.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-A44U.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a4ca383e-a467-45fe-8c61-09747e7e6fd7.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/16a50bdc-81d5-448b-9f69-c52a3ae7dc97.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-A44U -m