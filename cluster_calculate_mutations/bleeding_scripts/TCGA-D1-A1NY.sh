#!/bin/bash
unzip 0a2fa38d-7a61-4d58-b8b8-bc3aaf369926.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip c72f6031-479b-432e-82d7-5308c08ad7e5.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 0a2fa38d-7a61-4d58-b8b8-bc3aaf369926.zip
rm c72f6031-479b-432e-82d7-5308c08ad7e5.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D1-A1NY.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/c72f6031-479b-432e-82d7-5308c08ad7e5.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/0a2fa38d-7a61-4d58-b8b8-bc3aaf369926.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D1-A1NY -A -m