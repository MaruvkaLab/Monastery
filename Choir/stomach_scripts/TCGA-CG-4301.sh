#!/bin/bash
unzip 74ca71e7-9aaf-4b7a-8d0d-9b3135b921cf.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 97cb7eb5-4690-49f4-84e5-026d83d2e422.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 74ca71e7-9aaf-4b7a-8d0d-9b3135b921cf.zip
rm 97cb7eb5-4690-49f4-84e5-026d83d2e422.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-4301.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/97cb7eb5-4690-49f4-84e5-026d83d2e422.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/74ca71e7-9aaf-4b7a-8d0d-9b3135b921cf.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-4301 -m