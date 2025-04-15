#!/bin/bash
unzip d0b6487f-adaa-4ed6-ba60-2ab54d031732.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 24911bf9-bb9f-42a8-abcc-cc2681745292.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm d0b6487f-adaa-4ed6-ba60-2ab54d031732.zip
rm 24911bf9-bb9f-42a8-abcc-cc2681745292.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-EC-A1QX.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/24911bf9-bb9f-42a8-abcc-cc2681745292.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d0b6487f-adaa-4ed6-ba60-2ab54d031732.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-EC-A1QX -A -m