#!/bin/bash
unzip ef97fc12-381c-47ab-955f-3a3fe8a0f2cf.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip f43e0346-b6d7-4699-8f36-ec5c42638830.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm ef97fc12-381c-47ab-955f-3a3fe8a0f2cf.zip
rm f43e0346-b6d7-4699-8f36-ec5c42638830.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-F1-6177.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/f43e0346-b6d7-4699-8f36-ec5c42638830.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ef97fc12-381c-47ab-955f-3a3fe8a0f2cf.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-F1-6177 -m