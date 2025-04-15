#!/bin/bash
unzip a35d0173-4ae9-4f80-b171-3c340ffa0aa9.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 13651bed-5188-4b1d-b043-8f7359e73d5b.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm a35d0173-4ae9-4f80-b171-3c340ffa0aa9.zip
rm 13651bed-5188-4b1d-b043-8f7359e73d5b.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-AJ-A3EK.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/13651bed-5188-4b1d-b043-8f7359e73d5b.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a35d0173-4ae9-4f80-b171-3c340ffa0aa9.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-AJ-A3EK -A -m