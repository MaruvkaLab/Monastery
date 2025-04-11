#!/bin/bash
unzip fd3f5f1d-d5c3-4fd9-a5b4-3a251a3c0d16.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 8e8d9c34-abd8-4419-939a-1b6c95b6fa39.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm fd3f5f1d-d5c3-4fd9-a5b4-3a251a3c0d16.zip
rm 8e8d9c34-abd8-4419-939a-1b6c95b6fa39.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-EQ-8122.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/8e8d9c34-abd8-4419-939a-1b6c95b6fa39.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/fd3f5f1d-d5c3-4fd9-a5b4-3a251a3c0d16.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-EQ-8122 -m