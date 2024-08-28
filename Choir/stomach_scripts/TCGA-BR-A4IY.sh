#!/bin/bash
unzip 654f3632-9f29-4862-ae99-9c3d6f44ccf8.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 92b3a617-c272-4b18-bdae-b4f08c0a3a01.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 654f3632-9f29-4862-ae99-9c3d6f44ccf8.zip
rm 92b3a617-c272-4b18-bdae-b4f08c0a3a01.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-A4IY.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/92b3a617-c272-4b18-bdae-b4f08c0a3a01.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/654f3632-9f29-4862-ae99-9c3d6f44ccf8.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-A4IY -m