#!/bin/bash
unzip 6db78eb6-13ac-47e4-9940-e85dfda496da.zip -d $1
unzip e6ebc885-0a76-484a-9042-77f999f2ebfa.zip -d $1
rm 6db78eb6-13ac-47e4-9940-e85dfda496da.zip
rm e6ebc885-0a76-484a-9042-77f999f2ebfa.zip
$3 -N $1/e6ebc885-0a76-484a-9042-77f999f2ebfa.hist.tsv -T $1/6db78eb6-13ac-47e4-9940-e85dfda496da.hist.tsv --from_file --integer -O $2/TCGA-D8-A1XK -A -m