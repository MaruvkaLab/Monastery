#!/bin/bash
unzip ae432112-c546-48fc-b94a-8bf0300e2a1c.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip c1eac0d7-fe04-4f1b-b998-cb66b37cd9d0.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm ae432112-c546-48fc-b94a-8bf0300e2a1c.zip
rm c1eac0d7-fe04-4f1b-b998-cb66b37cd9d0.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CM-6680.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/c1eac0d7-fe04-4f1b-b998-cb66b37cd9d0.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ae432112-c546-48fc-b94a-8bf0300e2a1c.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CM-6680 -A -m