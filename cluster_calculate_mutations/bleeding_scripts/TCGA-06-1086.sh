#!/bin/bash
unzip 0299c399-f301-444a-b7c4-57fa96ef5e2f.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 0148fc66-05c6-489c-af47-26d12cbd898d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 0299c399-f301-444a-b7c4-57fa96ef5e2f.zip
rm 0148fc66-05c6-489c-af47-26d12cbd898d.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-06-1086.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0148fc66-05c6-489c-af47-26d12cbd898d.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0299c399-f301-444a-b7c4-57fa96ef5e2f.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-06-1086 -A -m