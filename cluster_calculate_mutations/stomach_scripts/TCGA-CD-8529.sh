#!/bin/bash
unzip ab2ea068-d818-4810-8b4d-f67a473cee91.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 1081e4f2-b896-4859-a451-bc3cbef17f17.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm ab2ea068-d818-4810-8b4d-f67a473cee91.zip
rm 1081e4f2-b896-4859-a451-bc3cbef17f17.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CD-8529.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1081e4f2-b896-4859-a451-bc3cbef17f17.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ab2ea068-d818-4810-8b4d-f67a473cee91.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CD-8529 -m