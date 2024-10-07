#!/bin/bash
unzip 15d57d07-c464-41e2-b269-f35b82659842.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 73052b39-2a22-4145-ba2a-b6020ebc575c.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 15d57d07-c464-41e2-b269-f35b82659842.zip
rm 73052b39-2a22-4145-ba2a-b6020ebc575c.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-A4QI.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/73052b39-2a22-4145-ba2a-b6020ebc575c.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/15d57d07-c464-41e2-b269-f35b82659842.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-A4QI -m