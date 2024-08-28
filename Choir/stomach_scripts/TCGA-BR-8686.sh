#!/bin/bash
unzip 30e1eb42-7c6b-41f6-899e-bd64a8405f17.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a3f7671a-f978-4e8e-bcd9-55964547c4b8.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 30e1eb42-7c6b-41f6-899e-bd64a8405f17.zip
rm a3f7671a-f978-4e8e-bcd9-55964547c4b8.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8686.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a3f7671a-f978-4e8e-bcd9-55964547c4b8.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/30e1eb42-7c6b-41f6-899e-bd64a8405f17.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8686 -m