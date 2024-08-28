#!/bin/bash
unzip a126d7cb-e8a8-4ae3-afb2-9d2b1c4593c4.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip ccfc49c0-de72-426b-9619-1ef97078216d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm a126d7cb-e8a8-4ae3-afb2-9d2b1c4593c4.zip
rm ccfc49c0-de72-426b-9619-1ef97078216d.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-4443.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/ccfc49c0-de72-426b-9619-1ef97078216d.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a126d7cb-e8a8-4ae3-afb2-9d2b1c4593c4.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-4443 -m