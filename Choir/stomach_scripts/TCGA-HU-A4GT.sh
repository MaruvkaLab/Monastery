#!/bin/bash
unzip 26c019d9-931a-4da5-8ac0-64cdf6de7266.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 5157db14-5e90-4e16-85f8-71fb5ebbcd63.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 26c019d9-931a-4da5-8ac0-64cdf6de7266.zip
rm 5157db14-5e90-4e16-85f8-71fb5ebbcd63.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-A4GT.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/5157db14-5e90-4e16-85f8-71fb5ebbcd63.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/26c019d9-931a-4da5-8ac0-64cdf6de7266.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-A4GT -m