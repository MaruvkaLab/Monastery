#!/bin/bash
unzip e0d15041-7a26-484f-bf22-76bbe3df9a87.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a2e13cf3-5774-4d44-8c81-84029db30889.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm e0d15041-7a26-484f-bf22-76bbe3df9a87.zip
rm a2e13cf3-5774-4d44-8c81-84029db30889.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-QS-A5YR.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a2e13cf3-5774-4d44-8c81-84029db30889.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/e0d15041-7a26-484f-bf22-76bbe3df9a87.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-QS-A5YR -A -m