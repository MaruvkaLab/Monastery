#!/bin/bash
unzip 448868ee-15f8-415e-ba92-709beaf4eb6b.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 27dc289d-8f1b-44dc-af9a-8c3688e79679.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 448868ee-15f8-415e-ba92-709beaf4eb6b.zip
rm 27dc289d-8f1b-44dc-af9a-8c3688e79679.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CD-8535.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/27dc289d-8f1b-44dc-af9a-8c3688e79679.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/448868ee-15f8-415e-ba92-709beaf4eb6b.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CD-8535 -m