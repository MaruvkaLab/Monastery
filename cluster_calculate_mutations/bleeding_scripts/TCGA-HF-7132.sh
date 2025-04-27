#!/bin/bash
unzip 0d0f6d46-275f-4bb5-a2e4-4032ba1c269f.zip -d $1
unzip 818c7fdd-022b-47af-bb64-18e27ccfb739.zip -d $1
rm 0d0f6d46-275f-4bb5-a2e4-4032ba1c269f.zip
rm 818c7fdd-022b-47af-bb64-18e27ccfb739.zip
$3 -N $1/818c7fdd-022b-47af-bb64-18e27ccfb739.hist.tsv -T $1/0d0f6d46-275f-4bb5-a2e4-4032ba1c269f.hist.tsv --from_file --integer -O $2/TCGA-HF-7132 -A -m