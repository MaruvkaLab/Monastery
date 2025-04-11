#!/bin/bash
unzip ec547750-cb49-4273-a0f2-882068468815.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 1532cb12-5024-4991-bc5c-734fa0cc7795.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm ec547750-cb49-4273-a0f2-882068468815.zip
rm 1532cb12-5024-4991-bc5c-734fa0cc7795.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-VQ-AA69.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1532cb12-5024-4991-bc5c-734fa0cc7795.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ec547750-cb49-4273-a0f2-882068468815.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-VQ-AA69 -m