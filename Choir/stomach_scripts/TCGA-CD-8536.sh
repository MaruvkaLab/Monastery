#!/bin/bash
unzip 89f30e6d-f913-4668-ad5b-efc4b68d531f.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 86751868-e9df-40eb-beeb-28b621b96fad.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 89f30e6d-f913-4668-ad5b-efc4b68d531f.zip
rm 86751868-e9df-40eb-beeb-28b621b96fad.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CD-8536.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/86751868-e9df-40eb-beeb-28b621b96fad.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/89f30e6d-f913-4668-ad5b-efc4b68d531f.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CD-8536 -m