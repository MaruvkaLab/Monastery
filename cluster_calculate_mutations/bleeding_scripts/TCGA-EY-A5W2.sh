#!/bin/bash
unzip ac215d03-a49d-4977-9a7c-6b331ae06c80.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 0f8388f0-d61a-4bb5-953d-9d87072a14fa.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm ac215d03-a49d-4977-9a7c-6b331ae06c80.zip
rm 0f8388f0-d61a-4bb5-953d-9d87072a14fa.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-EY-A5W2.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0f8388f0-d61a-4bb5-953d-9d87072a14fa.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ac215d03-a49d-4977-9a7c-6b331ae06c80.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-EY-A5W2 -A -m