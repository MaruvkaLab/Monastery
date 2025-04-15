#!/bin/bash
unzip e18dd86a-84b3-44cb-9681-8dacde4cb8cc.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 86016b9e-8db4-4cf4-a2ae-5da5ceb0f639.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm e18dd86a-84b3-44cb-9681-8dacde4cb8cc.zip
rm 86016b9e-8db4-4cf4-a2ae-5da5ceb0f639.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-06-0139.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/86016b9e-8db4-4cf4-a2ae-5da5ceb0f639.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/e18dd86a-84b3-44cb-9681-8dacde4cb8cc.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-06-0139 -A -m