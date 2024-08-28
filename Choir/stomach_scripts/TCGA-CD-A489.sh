#!/bin/bash
unzip 8b73234a-566f-4d42-a821-134c13f84463.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 1ebed179-1b44-49bf-b247-4dba6eb547e2.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 8b73234a-566f-4d42-a821-134c13f84463.zip
rm 1ebed179-1b44-49bf-b247-4dba6eb547e2.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CD-A489.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1ebed179-1b44-49bf-b247-4dba6eb547e2.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/8b73234a-566f-4d42-a821-134c13f84463.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CD-A489 -m