#!/bin/bash
unzip 9791ad97-3fc9-426e-8590-5f4bb60ac3d7.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 53d75738-deb0-4665-b294-39128466ca3a.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 9791ad97-3fc9-426e-8590-5f4bb60ac3d7.zip
rm 53d75738-deb0-4665-b294-39128466ca3a.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-A4YV.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/53d75738-deb0-4665-b294-39128466ca3a.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/9791ad97-3fc9-426e-8590-5f4bb60ac3d7.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-A4YV -m