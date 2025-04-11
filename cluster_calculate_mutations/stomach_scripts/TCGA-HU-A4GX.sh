#!/bin/bash
unzip 02c7f1ef-15cc-4cc3-ac4c-dfbdaf589a42.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 1d08f395-60d6-49e0-9afb-703ef627b98b.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 02c7f1ef-15cc-4cc3-ac4c-dfbdaf589a42.zip
rm 1d08f395-60d6-49e0-9afb-703ef627b98b.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-A4GX.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1d08f395-60d6-49e0-9afb-703ef627b98b.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/02c7f1ef-15cc-4cc3-ac4c-dfbdaf589a42.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-A4GX -m