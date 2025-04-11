#!/bin/bash
unzip 0fa5c3c8-bcd9-4156-b156-0fe146df10f2.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 6bfb7e9d-e309-4efb-9164-01535c4fa2a4.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 0fa5c3c8-bcd9-4156-b156-0fe146df10f2.zip
rm 6bfb7e9d-e309-4efb-9164-01535c4fa2a4.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-4306.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/6bfb7e9d-e309-4efb-9164-01535c4fa2a4.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0fa5c3c8-bcd9-4156-b156-0fe146df10f2.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-4306 -m