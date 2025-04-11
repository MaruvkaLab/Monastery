#!/bin/bash
unzip c6ba7cbe-a4f9-4a31-a533-68d917443916.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 13620d86-d3e1-4dd4-9c3e-6d071e61f0ed.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm c6ba7cbe-a4f9-4a31-a533-68d917443916.zip
rm 13620d86-d3e1-4dd4-9c3e-6d071e61f0ed.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-6524.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/13620d86-d3e1-4dd4-9c3e-6d071e61f0ed.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/c6ba7cbe-a4f9-4a31-a533-68d917443916.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-6524 -m