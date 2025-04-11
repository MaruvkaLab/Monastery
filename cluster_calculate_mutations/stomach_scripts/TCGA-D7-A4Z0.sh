#!/bin/bash
unzip 34450e0d-fa47-4f19-8e77-64ada52f2260.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 237fe2fe-df01-4a27-9ddd-ecee15744dc1.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 34450e0d-fa47-4f19-8e77-64ada52f2260.zip
rm 237fe2fe-df01-4a27-9ddd-ecee15744dc1.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-A4Z0.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/237fe2fe-df01-4a27-9ddd-ecee15744dc1.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/34450e0d-fa47-4f19-8e77-64ada52f2260.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-A4Z0 -m