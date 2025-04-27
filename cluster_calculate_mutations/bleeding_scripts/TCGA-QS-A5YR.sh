#!/bin/bash
unzip e0d15041-7a26-484f-bf22-76bbe3df9a87.zip -d $1
unzip a2e13cf3-5774-4d44-8c81-84029db30889.zip -d $1
rm e0d15041-7a26-484f-bf22-76bbe3df9a87.zip
rm a2e13cf3-5774-4d44-8c81-84029db30889.zip
$3 -N $1/a2e13cf3-5774-4d44-8c81-84029db30889.hist.tsv -T $1/e0d15041-7a26-484f-bf22-76bbe3df9a87.hist.tsv --from_file --integer -O $2/TCGA-QS-A5YR -A -m