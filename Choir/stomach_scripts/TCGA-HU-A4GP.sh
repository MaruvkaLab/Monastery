#!/bin/bash
unzip fdc44bc4-e0c3-4471-a75e-5630bd360339.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 69fbf5e0-d7a1-4533-aa5c-3c8830f417c7.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm fdc44bc4-e0c3-4471-a75e-5630bd360339.zip
rm 69fbf5e0-d7a1-4533-aa5c-3c8830f417c7.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-A4GP.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/69fbf5e0-d7a1-4533-aa5c-3c8830f417c7.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/fdc44bc4-e0c3-4471-a75e-5630bd360339.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-A4GP -m