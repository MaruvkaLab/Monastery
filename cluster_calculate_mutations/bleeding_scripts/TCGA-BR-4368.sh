#!/bin/bash
unzip 954ff5e2-8c6b-4819-81e9-af172db7fb14.zip -d $1
unzip 47c5e81a-f69e-490e-976f-d5b434a58a96.zip -d $1
rm 954ff5e2-8c6b-4819-81e9-af172db7fb14.zip
rm 47c5e81a-f69e-490e-976f-d5b434a58a96.zip
$3 -N $1/47c5e81a-f69e-490e-976f-d5b434a58a96.hist.tsv -T $1/954ff5e2-8c6b-4819-81e9-af172db7fb14.hist.tsv --from_file --integer -O $2/TCGA-BR-4368 -A -m