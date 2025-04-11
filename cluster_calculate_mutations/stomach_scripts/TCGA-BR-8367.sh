#!/bin/bash
unzip 885ae6d0-1a22-4641-8cf6-0d3406c4579c.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 6d5c1321-6ec4-4759-bcc0-160982bb8538.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 885ae6d0-1a22-4641-8cf6-0d3406c4579c.zip
rm 6d5c1321-6ec4-4759-bcc0-160982bb8538.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8367.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/6d5c1321-6ec4-4759-bcc0-160982bb8538.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/885ae6d0-1a22-4641-8cf6-0d3406c4579c.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8367 -m