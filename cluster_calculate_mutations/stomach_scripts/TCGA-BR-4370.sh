#!/bin/bash
unzip 65671d63-0c4c-432f-9ac8-d805e39ad012.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 81d3f4ea-abe0-45d9-8008-11c1eafa9a6f.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 65671d63-0c4c-432f-9ac8-d805e39ad012.zip
rm 81d3f4ea-abe0-45d9-8008-11c1eafa9a6f.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-4370.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/81d3f4ea-abe0-45d9-8008-11c1eafa9a6f.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/65671d63-0c4c-432f-9ac8-d805e39ad012.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-4370 -m