#!/bin/bash
unzip 333e3e72-4d17-4877-8db8-89d28be0aec1.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip d54bc9a4-7851-4841-91f5-21b9c1d33896.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 333e3e72-4d17-4877-8db8-89d28be0aec1.zip
rm d54bc9a4-7851-4841-91f5-21b9c1d33896.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-CG-5727.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d54bc9a4-7851-4841-91f5-21b9c1d33896.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/333e3e72-4d17-4877-8db8-89d28be0aec1.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-CG-5727 -m