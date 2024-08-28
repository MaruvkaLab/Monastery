#!/bin/bash
unzip 03049c32-d548-4373-85c7-ee99dcf08757.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 24452534-6956-4231-86de-86fc089eb793.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 03049c32-d548-4373-85c7-ee99dcf08757.zip
rm 24452534-6956-4231-86de-86fc089eb793.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-7197.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/24452534-6956-4231-86de-86fc089eb793.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/03049c32-d548-4373-85c7-ee99dcf08757.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-7197 -m