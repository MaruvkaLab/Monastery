#!/bin/bash
unzip ddc1310b-ffa0-4040-b179-3e56adbe5f47.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip f18b4633-8d97-414e-80fa-080d00079b69.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm ddc1310b-ffa0-4040-b179-3e56adbe5f47.zip
rm f18b4633-8d97-414e-80fa-080d00079b69.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-6565.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/f18b4633-8d97-414e-80fa-080d00079b69.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ddc1310b-ffa0-4040-b179-3e56adbe5f47.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-6565 -m