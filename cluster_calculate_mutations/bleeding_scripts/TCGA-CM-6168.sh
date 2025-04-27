#!/bin/bash
unzip 04b19c21-076e-4c90-9616-f9ddaf374dad.zip -d $1
unzip 6cbbf5ae-072e-48f3-88a9-a4552b0728f7.zip -d $1
rm 04b19c21-076e-4c90-9616-f9ddaf374dad.zip
rm 6cbbf5ae-072e-48f3-88a9-a4552b0728f7.zip
$3 -N $1/6cbbf5ae-072e-48f3-88a9-a4552b0728f7.hist.tsv -T $1/04b19c21-076e-4c90-9616-f9ddaf374dad.hist.tsv --from_file --integer -O $2/TCGA-CM-6168 -A -m