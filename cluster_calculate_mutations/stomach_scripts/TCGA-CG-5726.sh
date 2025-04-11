#!/bin/bash
unzip 368cbbf0-00fc-4310-ad9a-73b05a7fcc85.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 42f620a1-5c1b-40f2-a5a2-2ee33781c4d3.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 368cbbf0-00fc-4310-ad9a-73b05a7fcc85.zip
rm 42f620a1-5c1b-40f2-a5a2-2ee33781c4d3.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-5726.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/42f620a1-5c1b-40f2-a5a2-2ee33781c4d3.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/368cbbf0-00fc-4310-ad9a-73b05a7fcc85.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-5726 -m