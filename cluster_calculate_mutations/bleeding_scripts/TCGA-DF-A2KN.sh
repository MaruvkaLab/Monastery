#!/bin/bash
unzip b7aacd1c-a67f-445c-bbfe-9a59749093ae.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip ac4da161-8f61-4f83-9bdb-3455f6daab93.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm b7aacd1c-a67f-445c-bbfe-9a59749093ae.zip
rm ac4da161-8f61-4f83-9bdb-3455f6daab93.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-DF-A2KN.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ac4da161-8f61-4f83-9bdb-3455f6daab93.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b7aacd1c-a67f-445c-bbfe-9a59749093ae.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-DF-A2KN -A -m