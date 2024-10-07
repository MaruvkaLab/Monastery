#!/bin/bash
unzip 13babc15-b2d1-4b07-9ebf-0dc55de72248.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 4ca6f07e-354c-407c-ad83-7ca8ec99b017.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 13babc15-b2d1-4b07-9ebf-0dc55de72248.zip
rm 4ca6f07e-354c-407c-ad83-7ca8ec99b017.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-A4HD.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4ca6f07e-354c-407c-ad83-7ca8ec99b017.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/13babc15-b2d1-4b07-9ebf-0dc55de72248.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-A4HD -m