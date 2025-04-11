#!/bin/bash
unzip 76923062-e0ed-4f19-827a-0355223550a9.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 3569445c-68ae-4b90-898e-c610fcf43326.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 76923062-e0ed-4f19-827a-0355223550a9.zip
rm 3569445c-68ae-4b90-898e-c610fcf43326.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8679.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/3569445c-68ae-4b90-898e-c610fcf43326.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/76923062-e0ed-4f19-827a-0355223550a9.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8679 -m