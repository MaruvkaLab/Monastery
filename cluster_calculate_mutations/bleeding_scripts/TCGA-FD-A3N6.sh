#!/bin/bash
unzip 701b21c6-80d4-4bdd-9089-2b72aff1c4e5.zip -d $1
unzip 7328213a-8f96-4671-8c02-0bfbe361c070.zip -d $1
rm 701b21c6-80d4-4bdd-9089-2b72aff1c4e5.zip
rm 7328213a-8f96-4671-8c02-0bfbe361c070.zip
$3 -N $1/7328213a-8f96-4671-8c02-0bfbe361c070.hist.tsv -T $1/701b21c6-80d4-4bdd-9089-2b72aff1c4e5.hist.tsv --from_file --integer -O $2/TCGA-FD-A3N6 -A -m