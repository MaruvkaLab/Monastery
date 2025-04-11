#!/bin/bash
unzip 96e096f7-02aa-40a9-8a45-30589f19d0c1.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 8a9ecff7-2f0d-4d46-920c-4b9a865a0ede.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 96e096f7-02aa-40a9-8a45-30589f19d0c1.zip
rm 8a9ecff7-2f0d-4d46-920c-4b9a865a0ede.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-6566.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/8a9ecff7-2f0d-4d46-920c-4b9a865a0ede.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/96e096f7-02aa-40a9-8a45-30589f19d0c1.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-6566 -m