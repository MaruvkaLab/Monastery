#!/bin/bash
unzip 87ec17f7-561b-4648-acba-830587f86ce8.zip -d $1
unzip acc34e86-9c5a-41b5-b678-9110e9d75629.zip -d $1
rm 87ec17f7-561b-4648-acba-830587f86ce8.zip
rm acc34e86-9c5a-41b5-b678-9110e9d75629.zip
$3 -N $1/acc34e86-9c5a-41b5-b678-9110e9d75629.hist.tsv -T $1/87ec17f7-561b-4648-acba-830587f86ce8.hist.tsv --from_file --integer -O $2/TCGA-D1-A17F -A -m