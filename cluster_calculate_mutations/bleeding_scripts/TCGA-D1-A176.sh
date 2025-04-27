#!/bin/bash
unzip 1a2f35fa-8ab2-44ef-b3f5-2d2bb20e01bb.zip -d $1
unzip acae8096-146b-41fd-96e4-b86ba8c50946.zip -d $1
rm 1a2f35fa-8ab2-44ef-b3f5-2d2bb20e01bb.zip
rm acae8096-146b-41fd-96e4-b86ba8c50946.zip
$3 -N $1/acae8096-146b-41fd-96e4-b86ba8c50946.hist.tsv -T $1/1a2f35fa-8ab2-44ef-b3f5-2d2bb20e01bb.hist.tsv --from_file --integer -O $2/TCGA-D1-A176 -A -m