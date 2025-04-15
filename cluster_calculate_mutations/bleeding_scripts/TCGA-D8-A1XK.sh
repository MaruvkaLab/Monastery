#!/bin/bash
unzip 6db78eb6-13ac-47e4-9940-e85dfda496da.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip e6ebc885-0a76-484a-9042-77f999f2ebfa.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 6db78eb6-13ac-47e4-9940-e85dfda496da.zip
rm e6ebc885-0a76-484a-9042-77f999f2ebfa.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D8-A1XK.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/e6ebc885-0a76-484a-9042-77f999f2ebfa.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/6db78eb6-13ac-47e4-9940-e85dfda496da.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D8-A1XK -A -m