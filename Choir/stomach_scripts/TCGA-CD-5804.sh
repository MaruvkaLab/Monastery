#!/bin/bash
unzip 35cbcf4f-467a-4679-8031-bdd215bac811.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip b5b4c9b0-9c5f-4640-b718-365d6e966972.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 35cbcf4f-467a-4679-8031-bdd215bac811.zip
rm b5b4c9b0-9c5f-4640-b718-365d6e966972.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CD-5804.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b5b4c9b0-9c5f-4640-b718-365d6e966972.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/35cbcf4f-467a-4679-8031-bdd215bac811.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CD-5804 -m