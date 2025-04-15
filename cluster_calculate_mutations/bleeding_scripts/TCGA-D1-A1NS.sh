#!/bin/bash
unzip b33632cc-c90e-4fef-bc8a-9a5fa9f8ef3f.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 814d33d4-a632-4685-95e8-af879a23462d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm b33632cc-c90e-4fef-bc8a-9a5fa9f8ef3f.zip
rm 814d33d4-a632-4685-95e8-af879a23462d.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D1-A1NS.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/814d33d4-a632-4685-95e8-af879a23462d.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/b33632cc-c90e-4fef-bc8a-9a5fa9f8ef3f.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D1-A1NS -A -m