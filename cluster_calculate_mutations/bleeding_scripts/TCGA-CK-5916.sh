#!/bin/bash
unzip 9e9b15f4-6359-4b61-831d-952a47134b20.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 85cd89fe-cc2d-477f-a716-9665fd64d4cf.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 9e9b15f4-6359-4b61-831d-952a47134b20.zip
rm 85cd89fe-cc2d-477f-a716-9665fd64d4cf.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CK-5916.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/85cd89fe-cc2d-477f-a716-9665fd64d4cf.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/9e9b15f4-6359-4b61-831d-952a47134b20.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CK-5916 -A -m