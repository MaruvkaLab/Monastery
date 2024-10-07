#!/bin/bash
unzip 460cc999-670f-417a-896b-6e91fa06a4b8.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip b2c24c5f-69b8-4c9f-a607-54f4fe6037e8.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 460cc999-670f-417a-896b-6e91fa06a4b8.zip
rm b2c24c5f-69b8-4c9f-a607-54f4fe6037e8.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-4366.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b2c24c5f-69b8-4c9f-a607-54f4fe6037e8.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/460cc999-670f-417a-896b-6e91fa06a4b8.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-4366 -m