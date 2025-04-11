#!/bin/bash
unzip f5e2fb20-562e-46d1-ae76-7537402ed478.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 6678d158-7708-4d8d-9656-977066ff56b6.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm f5e2fb20-562e-46d1-ae76-7537402ed478.zip
rm 6678d158-7708-4d8d-9656-977066ff56b6.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-VQ-A94R.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/6678d158-7708-4d8d-9656-977066ff56b6.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/f5e2fb20-562e-46d1-ae76-7537402ed478.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-VQ-A94R -m