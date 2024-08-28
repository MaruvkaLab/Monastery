#!/bin/bash
unzip aefccc22-da54-4c8a-a440-f7eaf486e5ae.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 71c9983a-4597-465c-8124-dd78df931767.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm aefccc22-da54-4c8a-a440-f7eaf486e5ae.zip
rm 71c9983a-4597-465c-8124-dd78df931767.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CD-A486.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/71c9983a-4597-465c-8124-dd78df931767.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/aefccc22-da54-4c8a-a440-f7eaf486e5ae.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CD-A486 -m