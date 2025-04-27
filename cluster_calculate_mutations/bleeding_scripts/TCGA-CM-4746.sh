#!/bin/bash
unzip 65f303a2-8269-44c1-bb33-3bb296215d91.zip -d $1
unzip 417a9f56-0eb4-4ae6-9f14-69e816dec66e.zip -d $1
rm 65f303a2-8269-44c1-bb33-3bb296215d91.zip
rm 417a9f56-0eb4-4ae6-9f14-69e816dec66e.zip
$3 -N $1/417a9f56-0eb4-4ae6-9f14-69e816dec66e.hist.tsv -T $1/65f303a2-8269-44c1-bb33-3bb296215d91.hist.tsv --from_file --integer -O $2/TCGA-CM-4746 -A -m