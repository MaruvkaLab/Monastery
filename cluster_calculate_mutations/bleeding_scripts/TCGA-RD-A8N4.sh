#!/bin/bash
unzip b405586e-6412-4e00-8804-ebd0146075ac.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip c3c050a3-03a7-4f12-b33e-b3c8f152c681.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm b405586e-6412-4e00-8804-ebd0146075ac.zip
rm c3c050a3-03a7-4f12-b33e-b3c8f152c681.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-RD-A8N4.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/c3c050a3-03a7-4f12-b33e-b3c8f152c681.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b405586e-6412-4e00-8804-ebd0146075ac.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-RD-A8N4 -A -m