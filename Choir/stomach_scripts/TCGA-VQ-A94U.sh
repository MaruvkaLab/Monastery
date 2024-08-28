#!/bin/bash
unzip 54b0629d-b22f-4b6c-8783-36062a4e0095.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip b23053aa-d741-473d-9e32-b039ec86d4dc.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 54b0629d-b22f-4b6c-8783-36062a4e0095.zip
rm b23053aa-d741-473d-9e32-b039ec86d4dc.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-VQ-A94U.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b23053aa-d741-473d-9e32-b039ec86d4dc.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/54b0629d-b22f-4b6c-8783-36062a4e0095.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-VQ-A94U -m