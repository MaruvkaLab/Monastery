#!/bin/bash
unzip dbbd2eb3-ff60-4f74-b381-f602455e5c8d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip b3be9698-333d-4a8a-9f22-1c328855bf05.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm dbbd2eb3-ff60-4f74-b381-f602455e5c8d.zip
rm b3be9698-333d-4a8a-9f22-1c328855bf05.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8380.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b3be9698-333d-4a8a-9f22-1c328855bf05.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/dbbd2eb3-ff60-4f74-b381-f602455e5c8d.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8380 -m