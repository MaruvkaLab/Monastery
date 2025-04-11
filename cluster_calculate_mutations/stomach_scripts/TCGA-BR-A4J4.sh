#!/bin/bash
unzip d695f3f2-9a0b-443d-b0a3-5918a2721827.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 3158e5ca-b94e-4cf2-8357-2a36cc17de5e.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm d695f3f2-9a0b-443d-b0a3-5918a2721827.zip
rm 3158e5ca-b94e-4cf2-8357-2a36cc17de5e.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-A4J4.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/3158e5ca-b94e-4cf2-8357-2a36cc17de5e.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/d695f3f2-9a0b-443d-b0a3-5918a2721827.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-A4J4 -m