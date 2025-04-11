#!/bin/bash
unzip f49bf942-3f1d-480e-a345-bb9cab8d3dad.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 48ad8157-0c1b-4a67-b534-c61c951023c6.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm f49bf942-3f1d-480e-a345-bb9cab8d3dad.zip
rm 48ad8157-0c1b-4a67-b534-c61c951023c6.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8372.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/48ad8157-0c1b-4a67-b534-c61c951023c6.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/f49bf942-3f1d-480e-a345-bb9cab8d3dad.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8372 -m