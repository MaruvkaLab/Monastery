#!/bin/bash
unzip 99cc27da-9e0e-488b-86b2-7a52ff204d8d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 78c96109-283c-484d-91d7-e8ce6b957551.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 99cc27da-9e0e-488b-86b2-7a52ff204d8d.zip
rm 78c96109-283c-484d-91d7-e8ce6b957551.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-3A-A9IV.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/78c96109-283c-484d-91d7-e8ce6b957551.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/99cc27da-9e0e-488b-86b2-7a52ff204d8d.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-3A-A9IV -A -m