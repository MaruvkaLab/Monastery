#!/bin/bash
unzip edeae43b-933a-4968-9fef-a5f5b103e73b.zip -d $1
unzip 14424e27-f38f-485e-898b-92c760790156.zip -d $1
rm edeae43b-933a-4968-9fef-a5f5b103e73b.zip
rm 14424e27-f38f-485e-898b-92c760790156.zip
$3 -N $1/14424e27-f38f-485e-898b-92c760790156.hist.tsv -T $1/edeae43b-933a-4968-9fef-a5f5b103e73b.hist.tsv --from_file --integer -O $2/TCGA-CG-5728 -A -m