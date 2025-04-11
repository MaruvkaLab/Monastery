#!/bin/bash
unzip b2cae7bf-bc5a-45f4-905b-901c397c0d9f.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 9af47332-c179-4d7e-ae05-e6903f89b688.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm b2cae7bf-bc5a-45f4-905b-901c397c0d9f.zip
rm 9af47332-c179-4d7e-ae05-e6903f89b688.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-R5-A7ZF.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/9af47332-c179-4d7e-ae05-e6903f89b688.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b2cae7bf-bc5a-45f4-905b-901c397c0d9f.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-R5-A7ZF -m