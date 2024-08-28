#!/bin/bash
unzip b328e42c-0db9-4108-a613-1a362f099adf.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 1dc304c5-192f-4ba5-8dd0-6649bfc4e89c.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm b328e42c-0db9-4108-a613-1a362f099adf.zip
rm 1dc304c5-192f-4ba5-8dd0-6649bfc4e89c.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-RD-A8MW.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1dc304c5-192f-4ba5-8dd0-6649bfc4e89c.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b328e42c-0db9-4108-a613-1a362f099adf.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-RD-A8MW -m