#!/bin/bash
unzip 098698a0-3107-49e3-9226-d6d105f195a1.zip -d $1
unzip 009dcaf2-f6bb-415e-b088-6e852853b1a2.zip -d $1
rm 098698a0-3107-49e3-9226-d6d105f195a1.zip
rm 009dcaf2-f6bb-415e-b088-6e852853b1a2.zip
$3 -N $1/009dcaf2-f6bb-415e-b088-6e852853b1a2.hist.tsv -T $1/098698a0-3107-49e3-9226-d6d105f195a1.hist.tsv --from_file --integer -O $2/TCGA-IN-8462 -A -m