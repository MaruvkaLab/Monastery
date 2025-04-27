#!/bin/bash
unzip cc9c617f-749d-4683-a066-a20c12e45dfc.zip -d $1
unzip dd9995b4-4ae3-4acf-aed6-ab3e36c5042e.zip -d $1
rm cc9c617f-749d-4683-a066-a20c12e45dfc.zip
rm dd9995b4-4ae3-4acf-aed6-ab3e36c5042e.zip
$3 -N $1/dd9995b4-4ae3-4acf-aed6-ab3e36c5042e.hist.tsv -T $1/cc9c617f-749d-4683-a066-a20c12e45dfc.hist.tsv --from_file --integer -O $2/TCGA-D5-6922 -A -m