#!/bin/bash
unzip 566842f8-cec3-470b-857c-c0ab7a5932fd.zip -d $1
unzip 939c5598-8f65-4cee-b98f-a109ae59a06f.zip -d $1
rm 566842f8-cec3-470b-857c-c0ab7a5932fd.zip
rm 939c5598-8f65-4cee-b98f-a109ae59a06f.zip
$3 -N $1/939c5598-8f65-4cee-b98f-a109ae59a06f.hist.tsv -T $1/566842f8-cec3-470b-857c-c0ab7a5932fd.hist.tsv --from_file --integer -O $2/TCGA-D7-A4YY -A -m