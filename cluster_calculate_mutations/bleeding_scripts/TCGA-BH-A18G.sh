#!/bin/bash
unzip 73b42f65-adfa-42d4-92cc-82c62f559bf1.zip -d $1
unzip 7cfc99d5-3e64-4b6e-8abb-4a127d4e5700.zip -d $1
rm 73b42f65-adfa-42d4-92cc-82c62f559bf1.zip
rm 7cfc99d5-3e64-4b6e-8abb-4a127d4e5700.zip
$3 -N $1/7cfc99d5-3e64-4b6e-8abb-4a127d4e5700.hist.tsv -T $1/73b42f65-adfa-42d4-92cc-82c62f559bf1.hist.tsv --from_file --integer -O $2/TCGA-BH-A18G -A -m