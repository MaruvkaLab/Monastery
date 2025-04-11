#!/bin/bash
unzip aabc740d-8abb-4a10-a512-442046fc80a8.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 11ebb19d-fbc3-4a2f-a8f1-258368e7ece5.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm aabc740d-8abb-4a10-a512-442046fc80a8.zip
rm 11ebb19d-fbc3-4a2f-a8f1-258368e7ece5.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-7704.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/11ebb19d-fbc3-4a2f-a8f1-258368e7ece5.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/aabc740d-8abb-4a10-a512-442046fc80a8.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-7704 -m