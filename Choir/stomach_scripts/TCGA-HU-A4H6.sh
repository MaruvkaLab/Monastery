#!/bin/bash
unzip 4c0eaded-d3e9-489a-b570-2767b74937ce.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip cf89e8ac-1899-480d-986c-cecc3e619245.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 4c0eaded-d3e9-489a-b570-2767b74937ce.zip
rm cf89e8ac-1899-480d-986c-cecc3e619245.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-HU-A4H6.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/cf89e8ac-1899-480d-986c-cecc3e619245.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/4c0eaded-d3e9-489a-b570-2767b74937ce.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-HU-A4H6 -m