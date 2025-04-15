#!/bin/bash
unzip ef9da3cf-00eb-4096-b0f6-f2d20b615dcb.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip abc55d00-ebc6-4ead-b221-09fe6ba9fb1a.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm ef9da3cf-00eb-4096-b0f6-f2d20b615dcb.zip
rm abc55d00-ebc6-4ead-b221-09fe6ba9fb1a.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-24-2019.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/abc55d00-ebc6-4ead-b221-09fe6ba9fb1a.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ef9da3cf-00eb-4096-b0f6-f2d20b615dcb.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-24-2019 -A -m