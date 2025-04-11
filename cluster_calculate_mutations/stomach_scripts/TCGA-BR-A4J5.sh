#!/bin/bash
unzip 856a12f2-8188-42b6-a849-89e84ae34a05.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip c564af22-08ab-4c54-9016-32595b1e4c72.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 856a12f2-8188-42b6-a849-89e84ae34a05.zip
rm c564af22-08ab-4c54-9016-32595b1e4c72.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-A4J5.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/c564af22-08ab-4c54-9016-32595b1e4c72.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/856a12f2-8188-42b6-a849-89e84ae34a05.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-A4J5 -m