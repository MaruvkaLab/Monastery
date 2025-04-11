#!/bin/bash
unzip d424dc99-a067-413a-bbba-2481a537ab73.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip d62a2961-2fc2-4020-af81-a1f26b43582f.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm d424dc99-a067-413a-bbba-2481a537ab73.zip
rm d62a2961-2fc2-4020-af81-a1f26b43582f.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-6528.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d62a2961-2fc2-4020-af81-a1f26b43582f.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d424dc99-a067-413a-bbba-2481a537ab73.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-6528 -m