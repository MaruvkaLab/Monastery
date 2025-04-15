#!/bin/bash
unzip 42547ce5-b3f3-4c4e-bae4-4ed8978b40c8.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a527836c-24fb-40e7-8854-e106bfde4e59.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 42547ce5-b3f3-4c4e-bae4-4ed8978b40c8.zip
rm a527836c-24fb-40e7-8854-e106bfde4e59.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-G4-6304.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a527836c-24fb-40e7-8854-e106bfde4e59.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/42547ce5-b3f3-4c4e-bae4-4ed8978b40c8.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-G4-6304 -A -m