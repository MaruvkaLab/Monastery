#!/bin/bash
unzip 1da41be6-5bfd-4899-b26f-5e813191f76d.zip -d $1
unzip a764ea1c-045b-43aa-9a79-7757e9cb06d2.zip -d $1
rm 1da41be6-5bfd-4899-b26f-5e813191f76d.zip
rm a764ea1c-045b-43aa-9a79-7757e9cb06d2.zip
$3 -N $1/a764ea1c-045b-43aa-9a79-7757e9cb06d2.hist.tsv -T $1/1da41be6-5bfd-4899-b26f-5e813191f76d.hist.tsv --from_file --integer -O $2/TCGA-DJ-A2PW -A -m