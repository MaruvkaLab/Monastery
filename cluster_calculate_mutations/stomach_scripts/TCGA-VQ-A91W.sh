#!/bin/bash
unzip 206bcf2f-48e1-4f70-af5d-e68b169793b2.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 790cb93a-339f-4844-b922-be62cad4d343.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 206bcf2f-48e1-4f70-af5d-e68b169793b2.zip
rm 790cb93a-339f-4844-b922-be62cad4d343.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-VQ-A91W.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/790cb93a-339f-4844-b922-be62cad4d343.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/206bcf2f-48e1-4f70-af5d-e68b169793b2.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-VQ-A91W -m