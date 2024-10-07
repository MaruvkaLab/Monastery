#!/bin/bash
unzip 11812a75-6e10-4427-9a83-b5f91b857b02.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 4c0e77fd-7ef5-4e16-a2d3-e2385070ef47.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 11812a75-6e10-4427-9a83-b5f91b857b02.zip
rm 4c0e77fd-7ef5-4e16-a2d3-e2385070ef47.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-7851.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4c0e77fd-7ef5-4e16-a2d3-e2385070ef47.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/11812a75-6e10-4427-9a83-b5f91b857b02.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-7851 -m