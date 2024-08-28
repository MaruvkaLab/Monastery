#!/bin/bash
unzip b7295d23-4f3c-405f-a01d-456a807f3d40.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip d3b82ada-e18a-4c70-94b0-92618cd289d5.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm b7295d23-4f3c-405f-a01d-456a807f3d40.zip
rm d3b82ada-e18a-4c70-94b0-92618cd289d5.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-6815.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d3b82ada-e18a-4c70-94b0-92618cd289d5.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b7295d23-4f3c-405f-a01d-456a807f3d40.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-6815 -m