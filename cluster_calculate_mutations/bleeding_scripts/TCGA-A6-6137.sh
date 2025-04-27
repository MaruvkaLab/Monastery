#!/bin/bash
unzip 5fe78023-b7d7-4601-9a4c-1f4257617770.zip -d $1
unzip 92ff6554-8ab0-4e20-a44f-f369796f1804.zip -d $1
rm 5fe78023-b7d7-4601-9a4c-1f4257617770.zip
rm 92ff6554-8ab0-4e20-a44f-f369796f1804.zip
$3 -N $1/92ff6554-8ab0-4e20-a44f-f369796f1804.hist.tsv -T $1/5fe78023-b7d7-4601-9a4c-1f4257617770.hist.tsv --from_file --integer -O $2/TCGA-A6-6137 -A -m