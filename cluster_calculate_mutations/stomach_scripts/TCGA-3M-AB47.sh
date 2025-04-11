#!/bin/bash
unzip 2ef4eeaa-d924-4a60-8ecf-1e6f5cf02dcb.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip c4d0ec6a-ca76-412e-a5c0-096ac2b7e88d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 2ef4eeaa-d924-4a60-8ecf-1e6f5cf02dcb.zip
rm c4d0ec6a-ca76-412e-a5c0-096ac2b7e88d.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-3M-AB47.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/c4d0ec6a-ca76-412e-a5c0-096ac2b7e88d.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/2ef4eeaa-d924-4a60-8ecf-1e6f5cf02dcb.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-3M-AB47 -m