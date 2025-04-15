#!/bin/bash
unzip 739b67c1-9ebc-4029-abfa-16420ccd05e1.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 21164973-49f0-4eae-bb72-2886c9702238.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 739b67c1-9ebc-4029-abfa-16420ccd05e1.zip
rm 21164973-49f0-4eae-bb72-2886c9702238.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-06-0166.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/21164973-49f0-4eae-bb72-2886c9702238.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/739b67c1-9ebc-4029-abfa-16420ccd05e1.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-06-0166 -A -m