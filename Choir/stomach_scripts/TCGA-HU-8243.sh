#!/bin/bash
unzip 4edc2ea9-8a49-4052-a343-e339ce64e072.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip d3f77418-3365-428a-b6d1-f34b3bec4dd3.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 4edc2ea9-8a49-4052-a343-e339ce64e072.zip
rm d3f77418-3365-428a-b6d1-f34b3bec4dd3.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-8243.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d3f77418-3365-428a-b6d1-f34b3bec4dd3.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4edc2ea9-8a49-4052-a343-e339ce64e072.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-8243 -m