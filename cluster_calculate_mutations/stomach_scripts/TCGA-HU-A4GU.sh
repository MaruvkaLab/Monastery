#!/bin/bash
unzip f4f3a3fc-2b77-402a-9ac9-0a3bb2dec203.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 96e08fe8-01f8-4947-b0d1-79a0d8fd7a68.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm f4f3a3fc-2b77-402a-9ac9-0a3bb2dec203.zip
rm 96e08fe8-01f8-4947-b0d1-79a0d8fd7a68.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-A4GU.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/96e08fe8-01f8-4947-b0d1-79a0d8fd7a68.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/f4f3a3fc-2b77-402a-9ac9-0a3bb2dec203.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-A4GU -m