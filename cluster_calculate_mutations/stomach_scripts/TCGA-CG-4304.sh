#!/bin/bash
unzip e63da20c-f587-4df8-b3c5-91316e9a9a92.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 3ab20593-2ff8-44fa-90c9-f31b5d0399fe.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm e63da20c-f587-4df8-b3c5-91316e9a9a92.zip
rm 3ab20593-2ff8-44fa-90c9-f31b5d0399fe.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-4304.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/3ab20593-2ff8-44fa-90c9-f31b5d0399fe.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/e63da20c-f587-4df8-b3c5-91316e9a9a92.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-4304 -m