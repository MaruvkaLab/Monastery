#!/bin/bash
unzip 66725db9-26c7-40e5-9d9b-3d7294d10b39.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 7e0f470b-5000-4a95-b4ac-81f68e72b011.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 66725db9-26c7-40e5-9d9b-3d7294d10b39.zip
rm 7e0f470b-5000-4a95-b4ac-81f68e72b011.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-4440.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/7e0f470b-5000-4a95-b4ac-81f68e72b011.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/66725db9-26c7-40e5-9d9b-3d7294d10b39.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-4440 -m