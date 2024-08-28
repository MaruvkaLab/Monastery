#!/bin/bash
unzip 2ded9992-b20a-4147-a55e-d6f055317d23.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip c11cc3d0-f605-4d3d-a2f7-2d2357afb7e6.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 2ded9992-b20a-4147-a55e-d6f055317d23.zip
rm c11cc3d0-f605-4d3d-a2f7-2d2357afb7e6.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-8608.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/c11cc3d0-f605-4d3d-a2f7-2d2357afb7e6.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/2ded9992-b20a-4147-a55e-d6f055317d23.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-8608 -m