#!/bin/bash
unzip 36364600-a952-4538-9563-49cf27846b0c.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 7f7eda14-4858-4690-96fe-87917280e5c8.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 36364600-a952-4538-9563-49cf27846b0c.zip
rm 7f7eda14-4858-4690-96fe-87917280e5c8.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-7707.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/7f7eda14-4858-4690-96fe-87917280e5c8.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/36364600-a952-4538-9563-49cf27846b0c.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-7707 -m