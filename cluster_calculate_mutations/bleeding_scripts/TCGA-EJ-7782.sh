#!/bin/bash
unzip d19799fc-e7d3-44a3-9c27-7be49d631e4b.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 32746383-2f13-47f5-886a-252cd5b3ccab.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm d19799fc-e7d3-44a3-9c27-7be49d631e4b.zip
rm 32746383-2f13-47f5-886a-252cd5b3ccab.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-EJ-7782.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/32746383-2f13-47f5-886a-252cd5b3ccab.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d19799fc-e7d3-44a3-9c27-7be49d631e4b.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-EJ-7782 -A -m