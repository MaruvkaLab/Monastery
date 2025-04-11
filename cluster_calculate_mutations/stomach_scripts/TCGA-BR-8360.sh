#!/bin/bash
unzip e4cf14f5-1948-4e75-a5d2-1febe3b9444a.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 6e5ad944-7611-4120-93fc-14bc3bfbbdb5.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm e4cf14f5-1948-4e75-a5d2-1febe3b9444a.zip
rm 6e5ad944-7611-4120-93fc-14bc3bfbbdb5.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8360.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/6e5ad944-7611-4120-93fc-14bc3bfbbdb5.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/e4cf14f5-1948-4e75-a5d2-1febe3b9444a.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8360 -m