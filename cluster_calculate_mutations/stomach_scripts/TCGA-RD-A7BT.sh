#!/bin/bash
unzip a9c4a097-3455-400c-b8ca-7799f8247a9c.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 4e2b091f-652e-4d70-8fa9-2ab5dc7d97bb.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm a9c4a097-3455-400c-b8ca-7799f8247a9c.zip
rm 4e2b091f-652e-4d70-8fa9-2ab5dc7d97bb.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-RD-A7BT.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4e2b091f-652e-4d70-8fa9-2ab5dc7d97bb.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a9c4a097-3455-400c-b8ca-7799f8247a9c.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-RD-A7BT -m