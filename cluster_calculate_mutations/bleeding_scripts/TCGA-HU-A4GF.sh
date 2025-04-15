#!/bin/bash
unzip 6d97d522-09d2-4c66-9497-d32f56ea8060.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip b3059a90-0984-4780-ab34-0ba562584d5a.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 6d97d522-09d2-4c66-9497-d32f56ea8060.zip
rm b3059a90-0984-4780-ab34-0ba562584d5a.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-A4GF.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b3059a90-0984-4780-ab34-0ba562584d5a.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/6d97d522-09d2-4c66-9497-d32f56ea8060.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-A4GF -A -m