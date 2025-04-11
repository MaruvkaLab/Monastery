#!/bin/bash
unzip eb8e28e6-e3ba-45dd-ac5a-a9046ca97e65.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip e1c52693-7f9a-48c7-bcbd-5587d508d087.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm eb8e28e6-e3ba-45dd-ac5a-a9046ca97e65.zip
rm e1c52693-7f9a-48c7-bcbd-5587d508d087.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-8575.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/e1c52693-7f9a-48c7-bcbd-5587d508d087.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/eb8e28e6-e3ba-45dd-ac5a-a9046ca97e65.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-8575 -m