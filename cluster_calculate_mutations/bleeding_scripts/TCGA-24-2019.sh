#!/bin/bash
unzip ef9da3cf-00eb-4096-b0f6-f2d20b615dcb.zip -d $1
unzip abc55d00-ebc6-4ead-b221-09fe6ba9fb1a.zip -d $1
rm ef9da3cf-00eb-4096-b0f6-f2d20b615dcb.zip
rm abc55d00-ebc6-4ead-b221-09fe6ba9fb1a.zip
$3 -N $1/abc55d00-ebc6-4ead-b221-09fe6ba9fb1a.hist.tsv -T $1/ef9da3cf-00eb-4096-b0f6-f2d20b615dcb.hist.tsv --from_file --integer -O $2/TCGA-24-2019 -A -m