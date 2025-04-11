#!/bin/bash
unzip bc3a8117-b833-4713-b671-4ed54ec08535.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 895d1f8a-88a8-45d1-b741-efec3b0db0be.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm bc3a8117-b833-4713-b671-4ed54ec08535.zip
rm 895d1f8a-88a8-45d1-b741-efec3b0db0be.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-5716.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/895d1f8a-88a8-45d1-b741-efec3b0db0be.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/bc3a8117-b833-4713-b671-4ed54ec08535.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-5716 -m