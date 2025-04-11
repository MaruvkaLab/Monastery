#!/bin/bash
unzip 53019330-4388-417a-bb8b-8e77687f9cc7.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 696b8347-d744-43ed-afe7-f32be8813cce.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 53019330-4388-417a-bb8b-8e77687f9cc7.zip
rm 696b8347-d744-43ed-afe7-f32be8813cce.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-BR-8486.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/696b8347-d744-43ed-afe7-f32be8813cce.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/53019330-4388-417a-bb8b-8e77687f9cc7.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-BR-8486 -m