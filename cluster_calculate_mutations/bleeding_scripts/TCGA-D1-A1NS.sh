#!/bin/bash
unzip b33632cc-c90e-4fef-bc8a-9a5fa9f8ef3f.zip -d $1
unzip 814d33d4-a632-4685-95e8-af879a23462d.zip -d $1
rm b33632cc-c90e-4fef-bc8a-9a5fa9f8ef3f.zip
rm 814d33d4-a632-4685-95e8-af879a23462d.zip
$3 -N $1/814d33d4-a632-4685-95e8-af879a23462d.hist.tsv -T $1/b33632cc-c90e-4fef-bc8a-9a5fa9f8ef3f.hist.tsv --from_file --integer -O $2/TCGA-D1-A1NS -A -m