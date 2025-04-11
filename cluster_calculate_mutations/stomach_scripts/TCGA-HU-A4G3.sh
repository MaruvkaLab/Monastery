#!/bin/bash
unzip 7f2ffa6b-3ba3-426b-a929-371a9d3e1364.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip d937185f-928f-4a34-b586-96581d0358a7.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 7f2ffa6b-3ba3-426b-a929-371a9d3e1364.zip
rm d937185f-928f-4a34-b586-96581d0358a7.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-A4G3.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d937185f-928f-4a34-b586-96581d0358a7.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/7f2ffa6b-3ba3-426b-a929-371a9d3e1364.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-A4G3 -m