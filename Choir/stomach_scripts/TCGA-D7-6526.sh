#!/bin/bash
unzip 14eb73a3-f977-42a0-beba-9c60345872f1.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 323e1469-3897-47a5-9ed6-e6282f0988be.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 14eb73a3-f977-42a0-beba-9c60345872f1.zip
rm 323e1469-3897-47a5-9ed6-e6282f0988be.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-6526.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/323e1469-3897-47a5-9ed6-e6282f0988be.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/14eb73a3-f977-42a0-beba-9c60345872f1.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-6526 -m