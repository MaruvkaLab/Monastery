#!/bin/bash
unzip 64fcc2ac-9b65-4779-b49d-32846b7e7b5e.zip -d $1
unzip 2ac7e87c-c354-4ef8-a6b1-d092cf44b563.zip -d $1
rm 64fcc2ac-9b65-4779-b49d-32846b7e7b5e.zip
rm 2ac7e87c-c354-4ef8-a6b1-d092cf44b563.zip
$3 -N $1/2ac7e87c-c354-4ef8-a6b1-d092cf44b563.hist.tsv -T $1/64fcc2ac-9b65-4779-b49d-32846b7e7b5e.hist.tsv --from_file --integer -O $2/TCGA-HU-8602 -A -m