#!/bin/bash
unzip 04860df7-6e77-4481-910a-50aa4606c114.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip bfbd399d-ca06-45c3-96c5-5d810df4a96b.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 04860df7-6e77-4481-910a-50aa4606c114.zip
rm bfbd399d-ca06-45c3-96c5-5d810df4a96b.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8368.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/bfbd399d-ca06-45c3-96c5-5d810df4a96b.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/04860df7-6e77-4481-910a-50aa4606c114.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8368 -m