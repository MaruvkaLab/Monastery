#!/bin/bash
unzip 26eeef4a-db5b-4295-a872-b247736da655.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip ceb2a17f-c4d4-43eb-ac9a-f450f847c551.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 26eeef4a-db5b-4295-a872-b247736da655.zip
rm ceb2a17f-c4d4-43eb-ac9a-f450f847c551.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8381.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ceb2a17f-c4d4-43eb-ac9a-f450f847c551.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/26eeef4a-db5b-4295-a872-b247736da655.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8381 -m