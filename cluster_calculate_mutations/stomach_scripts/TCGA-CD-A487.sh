#!/bin/bash
unzip 45e4da70-6776-4011-bf3e-05550a1ba372.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a6b2a446-4504-4591-83e4-747f8990795c.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 45e4da70-6776-4011-bf3e-05550a1ba372.zip
rm a6b2a446-4504-4591-83e4-747f8990795c.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CD-A487.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a6b2a446-4504-4591-83e4-747f8990795c.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/45e4da70-6776-4011-bf3e-05550a1ba372.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CD-A487 -m