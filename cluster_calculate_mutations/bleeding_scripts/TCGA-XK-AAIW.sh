#!/bin/bash
unzip 3f398914-15f7-4321-b02b-809d0d8d2f3e.zip -d $1
unzip 9970f49f-2f0d-4cf3-9032-23f27b168dae.zip -d $1
rm 3f398914-15f7-4321-b02b-809d0d8d2f3e.zip
rm 9970f49f-2f0d-4cf3-9032-23f27b168dae.zip
$3 -N $1/9970f49f-2f0d-4cf3-9032-23f27b168dae.hist.tsv -T $1/3f398914-15f7-4321-b02b-809d0d8d2f3e.hist.tsv --from_file --integer -O $2/TCGA-XK-AAIW -A -m