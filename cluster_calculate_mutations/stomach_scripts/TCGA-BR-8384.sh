#!/bin/bash
unzip 7630d28d-f9c9-46b8-9a8a-c53391b61ec2.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip aa3dceae-f2c1-44a9-8a92-cb389f04d2a2.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 7630d28d-f9c9-46b8-9a8a-c53391b61ec2.zip
rm aa3dceae-f2c1-44a9-8a92-cb389f04d2a2.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8384.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/aa3dceae-f2c1-44a9-8a92-cb389f04d2a2.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/7630d28d-f9c9-46b8-9a8a-c53391b61ec2.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8384 -m