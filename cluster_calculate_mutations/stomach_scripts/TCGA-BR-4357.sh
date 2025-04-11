#!/bin/bash
unzip 0aa1a715-ee24-4a97-bf16-0d187e3e2359.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip c2de9d01-8e72-45c9-92cc-83eb411ab3ee.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 0aa1a715-ee24-4a97-bf16-0d187e3e2359.zip
rm c2de9d01-8e72-45c9-92cc-83eb411ab3ee.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-4357.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/c2de9d01-8e72-45c9-92cc-83eb411ab3ee.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0aa1a715-ee24-4a97-bf16-0d187e3e2359.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-4357 -m