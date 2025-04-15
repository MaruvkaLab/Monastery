#!/bin/bash
unzip 260f7645-4a32-43ee-8de3-5c12b00f6fc7.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 1b094461-362f-4b03-926b-0818d205646d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 260f7645-4a32-43ee-8de3-5c12b00f6fc7.zip
rm 1b094461-362f-4b03-926b-0818d205646d.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-5M-AAT6.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1b094461-362f-4b03-926b-0818d205646d.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/260f7645-4a32-43ee-8de3-5c12b00f6fc7.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-5M-AAT6 -A -m