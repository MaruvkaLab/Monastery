#!/bin/bash
unzip 9add8cc7-8826-400a-88c2-dd50bd868915.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 0554098e-53d3-496f-9cae-4f1eb26d43bd.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 9add8cc7-8826-400a-88c2-dd50bd868915.zip
rm 0554098e-53d3-496f-9cae-4f1eb26d43bd.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-8578.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0554098e-53d3-496f-9cae-4f1eb26d43bd.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/9add8cc7-8826-400a-88c2-dd50bd868915.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-8578 -m