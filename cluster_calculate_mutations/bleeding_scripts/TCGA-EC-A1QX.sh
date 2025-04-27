#!/bin/bash
unzip d0b6487f-adaa-4ed6-ba60-2ab54d031732.zip -d $1
unzip 24911bf9-bb9f-42a8-abcc-cc2681745292.zip -d $1
rm d0b6487f-adaa-4ed6-ba60-2ab54d031732.zip
rm 24911bf9-bb9f-42a8-abcc-cc2681745292.zip
$3 -N $1/24911bf9-bb9f-42a8-abcc-cc2681745292.hist.tsv -T $1/d0b6487f-adaa-4ed6-ba60-2ab54d031732.hist.tsv --from_file --integer -O $2/TCGA-EC-A1QX -A -m