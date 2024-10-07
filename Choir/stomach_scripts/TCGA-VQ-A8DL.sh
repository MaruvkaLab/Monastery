#!/bin/bash
unzip 01524951-ceab-478f-8897-d666edd1ba23.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 974c4c4c-5e95-452c-8c26-2d91f4aa4897.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 01524951-ceab-478f-8897-d666edd1ba23.zip
rm 974c4c4c-5e95-452c-8c26-2d91f4aa4897.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-VQ-A8DL.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/974c4c4c-5e95-452c-8c26-2d91f4aa4897.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/01524951-ceab-478f-8897-d666edd1ba23.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-VQ-A8DL -m