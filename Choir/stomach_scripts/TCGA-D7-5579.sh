#!/bin/bash
unzip 41d976ef-d838-43c7-bac3-3ccd9f8d603d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip d86117d7-748c-4549-992f-998b56f776f6.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 41d976ef-d838-43c7-bac3-3ccd9f8d603d.zip
rm d86117d7-748c-4549-992f-998b56f776f6.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-5579.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d86117d7-748c-4549-992f-998b56f776f6.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/41d976ef-d838-43c7-bac3-3ccd9f8d603d.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-5579 -m