#!/bin/bash
unzip 3326e4f5-aba3-48f1-b1cd-a61d9e6b8de1.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip ad5f044e-1667-4b6c-b538-843bd9520815.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 3326e4f5-aba3-48f1-b1cd-a61d9e6b8de1.zip
rm ad5f044e-1667-4b6c-b538-843bd9520815.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-6518.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ad5f044e-1667-4b6c-b538-843bd9520815.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/3326e4f5-aba3-48f1-b1cd-a61d9e6b8de1.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-6518 -m