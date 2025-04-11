#!/bin/bash
unzip 0e4a7987-1143-4178-9b14-75ff60eb3021.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip b3a7f79c-f698-442b-82d0-2ef52d9f78bc.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 0e4a7987-1143-4178-9b14-75ff60eb3021.zip
rm b3a7f79c-f698-442b-82d0-2ef52d9f78bc.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8589.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b3a7f79c-f698-442b-82d0-2ef52d9f78bc.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0e4a7987-1143-4178-9b14-75ff60eb3021.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8589 -m