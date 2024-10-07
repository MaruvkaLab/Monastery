#!/bin/bash
unzip 053f6c4b-f89e-4c10-975c-dc5d6b67083a.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 4f0ec994-a25f-4d02-a939-9ac720755a3d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 053f6c4b-f89e-4c10-975c-dc5d6b67083a.zip
rm 4f0ec994-a25f-4d02-a939-9ac720755a3d.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-FP-8099.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4f0ec994-a25f-4d02-a939-9ac720755a3d.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/053f6c4b-f89e-4c10-975c-dc5d6b67083a.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-FP-8099 -m