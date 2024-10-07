#!/bin/bash
unzip e6d2cb8e-ea94-43a9-8431-545210a0131b.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip 1867b4bc-0ad3-4272-86f6-7be795051810.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm e6d2cb8e-ea94-43a9-8431-545210a0131b.zip
rm 1867b4bc-0ad3-4272-86f6-7be795051810.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-D7-6522.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1867b4bc-0ad3-4272-86f6-7be795051810.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/e6d2cb8e-ea94-43a9-8431-545210a0131b.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-D7-6522 -m