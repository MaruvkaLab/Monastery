#!/bin/bash
unzip c9fffec8-9a69-484c-aef3-481f8dab2f90.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a005c051-fac5-41b0-8034-c2e2022e8965.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm c9fffec8-9a69-484c-aef3-481f8dab2f90.zip
rm a005c051-fac5-41b0-8034-c2e2022e8965.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-4294.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a005c051-fac5-41b0-8034-c2e2022e8965.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/c9fffec8-9a69-484c-aef3-481f8dab2f90.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-4294 -m