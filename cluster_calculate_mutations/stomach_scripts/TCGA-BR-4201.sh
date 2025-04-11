#!/bin/bash
unzip fc8376df-e7c3-42e9-b7b3-3413c3493874.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 088afdfb-ae1e-4330-a015-38ce7fa2fa92.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm fc8376df-e7c3-42e9-b7b3-3413c3493874.zip
rm 088afdfb-ae1e-4330-a015-38ce7fa2fa92.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-4201.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/088afdfb-ae1e-4330-a015-38ce7fa2fa92.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/fc8376df-e7c3-42e9-b7b3-3413c3493874.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-4201 -m