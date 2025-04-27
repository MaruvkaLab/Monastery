#!/bin/bash
unzip 9e9b15f4-6359-4b61-831d-952a47134b20.zip -d $1
unzip 85cd89fe-cc2d-477f-a716-9665fd64d4cf.zip -d $1
rm 9e9b15f4-6359-4b61-831d-952a47134b20.zip
rm 85cd89fe-cc2d-477f-a716-9665fd64d4cf.zip
$3 -N $1/85cd89fe-cc2d-477f-a716-9665fd64d4cf.hist.tsv -T $1/9e9b15f4-6359-4b61-831d-952a47134b20.hist.tsv --from_file --integer -O $2/TCGA-CK-5916 -A -m