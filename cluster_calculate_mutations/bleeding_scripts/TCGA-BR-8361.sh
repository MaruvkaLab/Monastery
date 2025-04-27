#!/bin/bash
unzip c4a15bb2-8c26-486b-8d95-c47114593c30.zip -d $1
unzip 0c295821-e1a4-468f-b05b-6d11f4ebae76.zip -d $1
rm c4a15bb2-8c26-486b-8d95-c47114593c30.zip
rm 0c295821-e1a4-468f-b05b-6d11f4ebae76.zip
$3 -N $1/0c295821-e1a4-468f-b05b-6d11f4ebae76.hist.tsv -T $1/c4a15bb2-8c26-486b-8d95-c47114593c30.hist.tsv --from_file --integer -O $2/TCGA-BR-8361 -A -m