#!/bin/bash
unzip 7a3ee89e-8cb9-476d-9de3-cccb136f6cbb.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 24f4834f-4ba7-44fa-9579-224f17a85d0b.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 7a3ee89e-8cb9-476d-9de3-cccb136f6cbb.zip
rm 24f4834f-4ba7-44fa-9579-224f17a85d0b.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D1-A103.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/24f4834f-4ba7-44fa-9579-224f17a85d0b.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/7a3ee89e-8cb9-476d-9de3-cccb136f6cbb.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D1-A103 -A -m