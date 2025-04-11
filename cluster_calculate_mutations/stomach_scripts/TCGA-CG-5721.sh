#!/bin/bash
unzip 23f8ada4-693f-42a0-a21d-022d46338aad.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a0825812-633a-4d43-8e0b-f55a68c0c6c0.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 23f8ada4-693f-42a0-a21d-022d46338aad.zip
rm a0825812-633a-4d43-8e0b-f55a68c0c6c0.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-5721.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a0825812-633a-4d43-8e0b-f55a68c0c6c0.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/23f8ada4-693f-42a0-a21d-022d46338aad.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-5721 -m