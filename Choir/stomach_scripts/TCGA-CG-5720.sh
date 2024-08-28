#!/bin/bash
unzip 4c651f5b-88cc-45b5-b444-e4eb6b35bb26.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 30263dda-a336-41ed-922d-9e2f7ede67d2.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 4c651f5b-88cc-45b5-b444-e4eb6b35bb26.zip
rm 30263dda-a336-41ed-922d-9e2f7ede67d2.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-5720.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/30263dda-a336-41ed-922d-9e2f7ede67d2.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4c651f5b-88cc-45b5-b444-e4eb6b35bb26.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-5720 -m