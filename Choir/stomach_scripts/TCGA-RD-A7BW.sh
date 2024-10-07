#!/bin/bash
unzip 753a530a-46ad-447a-8f0b-3c24ca36ca84.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 28a70311-4fd2-4541-90cb-698ab0b41de7.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 753a530a-46ad-447a-8f0b-3c24ca36ca84.zip
rm 28a70311-4fd2-4541-90cb-698ab0b41de7.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-RD-A7BW.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/28a70311-4fd2-4541-90cb-698ab0b41de7.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/753a530a-46ad-447a-8f0b-3c24ca36ca84.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-RD-A7BW -m