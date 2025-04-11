#!/bin/bash
unzip 2b97c2cf-f804-4d46-88a1-243bb5c8637f.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 9f2f9f57-5dcf-4615-bd00-98e2eb6b47cc.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 2b97c2cf-f804-4d46-88a1-243bb5c8637f.zip
rm 9f2f9f57-5dcf-4615-bd00-98e2eb6b47cc.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-4300.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/9f2f9f57-5dcf-4615-bd00-98e2eb6b47cc.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/2b97c2cf-f804-4d46-88a1-243bb5c8637f.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-4300 -m