#!/bin/bash
unzip 739b67c1-9ebc-4029-abfa-16420ccd05e1.zip -d $1
unzip 21164973-49f0-4eae-bb72-2886c9702238.zip -d $1
rm 739b67c1-9ebc-4029-abfa-16420ccd05e1.zip
rm 21164973-49f0-4eae-bb72-2886c9702238.zip
$3 -N $1/21164973-49f0-4eae-bb72-2886c9702238.hist.tsv -T $1/739b67c1-9ebc-4029-abfa-16420ccd05e1.hist.tsv --from_file --integer -O $2/TCGA-06-0166 -A -m