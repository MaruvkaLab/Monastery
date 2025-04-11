#!/bin/bash
unzip 36a92ed3-edf0-4384-a42f-ef02fde73b2d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 5bca2d99-aeca-4ccc-a3a0-2a5be5fe7a79.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 36a92ed3-edf0-4384-a42f-ef02fde73b2d.zip
rm 5bca2d99-aeca-4ccc-a3a0-2a5be5fe7a79.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-7959.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/5bca2d99-aeca-4ccc-a3a0-2a5be5fe7a79.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/36a92ed3-edf0-4384-a42f-ef02fde73b2d.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-7959 -m