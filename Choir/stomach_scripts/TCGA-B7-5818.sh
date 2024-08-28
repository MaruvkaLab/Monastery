#!/bin/bash
unzip 65cd7240-2e33-4dc9-8ad5-03f33b07c041.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip ee5357de-4f27-4632-a9c8-6251f81a3062.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 65cd7240-2e33-4dc9-8ad5-03f33b07c041.zip
rm ee5357de-4f27-4632-a9c8-6251f81a3062.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-B7-5818.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ee5357de-4f27-4632-a9c8-6251f81a3062.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/65cd7240-2e33-4dc9-8ad5-03f33b07c041.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-B7-5818 -m