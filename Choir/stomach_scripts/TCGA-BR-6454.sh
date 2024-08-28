#!/bin/bash
unzip 26184f1d-532b-4b99-b225-fafe800971a4.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 1b0676f7-6531-4507-94c9-587625cf0a18.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 26184f1d-532b-4b99-b225-fafe800971a4.zip
rm 1b0676f7-6531-4507-94c9-587625cf0a18.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-6454.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1b0676f7-6531-4507-94c9-587625cf0a18.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/26184f1d-532b-4b99-b225-fafe800971a4.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-6454 -m