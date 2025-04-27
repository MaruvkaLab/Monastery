#!/bin/bash
unzip 316aafcf-3bde-42c4-841e-3b96c31327f4.zip -d $1
unzip 2b1c45b6-d155-4e3c-8962-dccc24818bff.zip -d $1
rm 316aafcf-3bde-42c4-841e-3b96c31327f4.zip
rm 2b1c45b6-d155-4e3c-8962-dccc24818bff.zip
$3 -N $1/2b1c45b6-d155-4e3c-8962-dccc24818bff.hist.tsv -T $1/316aafcf-3bde-42c4-841e-3b96c31327f4.hist.tsv --from_file --integer -O $2/TCGA-06-0154 -A -m