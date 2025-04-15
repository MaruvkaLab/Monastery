#!/bin/bash
unzip 1da41be6-5bfd-4899-b26f-5e813191f76d.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
unzip a764ea1c-045b-43aa-9a79-7757e9cb06d2.zip -d /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped
rm 1da41be6-5bfd-4899-b26f-5e813191f76d.zip
rm a764ea1c-045b-43aa-9a79-7757e9cb06d2.zip
mv /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/prerun/TCGA-DJ-A2PW.sh /storage/bfe_maruvka/avrahamk/texas/run_mutation_calling/postrun/
/storage/bfe_maruvka/avrahamk/msmutect_changes/MSMuTect_4/msmutect.sh -N /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/a764ea1c-045b-43aa-9a79-7757e9cb06d2.hist.tsv -T /storage/bfe_maruvka/avrahamk/texas/stomach_results/unzipped/1da41be6-5bfd-4899-b26f-5e813191f76d.hist.tsv --from_file --integer -O /storage/bfe_maruvka/avrahamk/texas/stomach_results/full_results/TCGA-DJ-A2PW -A -m