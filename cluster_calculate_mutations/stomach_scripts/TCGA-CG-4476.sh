#!/bin/bash
unzip 62f992f3-7b65-418c-9c46-3dc9b2ca1a3c.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 49311fa5-6eb5-401d-9543-976810687c11.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 62f992f3-7b65-418c-9c46-3dc9b2ca1a3c.zip
rm 49311fa5-6eb5-401d-9543-976810687c11.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-4476.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/49311fa5-6eb5-401d-9543-976810687c11.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/62f992f3-7b65-418c-9c46-3dc9b2ca1a3c.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-4476 -m