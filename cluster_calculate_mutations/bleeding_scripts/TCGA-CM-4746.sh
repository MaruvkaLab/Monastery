#!/bin/bash
unzip 65f303a2-8269-44c1-bb33-3bb296215d91.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 417a9f56-0eb4-4ae6-9f14-69e816dec66e.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 65f303a2-8269-44c1-bb33-3bb296215d91.zip
rm 417a9f56-0eb4-4ae6-9f14-69e816dec66e.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CM-4746.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/417a9f56-0eb4-4ae6-9f14-69e816dec66e.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/65f303a2-8269-44c1-bb33-3bb296215d91.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CM-4746 -A -m