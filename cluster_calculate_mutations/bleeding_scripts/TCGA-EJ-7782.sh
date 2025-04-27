#!/bin/bash
unzip d19799fc-e7d3-44a3-9c27-7be49d631e4b.zip -d $1
unzip 32746383-2f13-47f5-886a-252cd5b3ccab.zip -d $1
rm d19799fc-e7d3-44a3-9c27-7be49d631e4b.zip
rm 32746383-2f13-47f5-886a-252cd5b3ccab.zip
$3 -N $1/32746383-2f13-47f5-886a-252cd5b3ccab.hist.tsv -T $1/d19799fc-e7d3-44a3-9c27-7be49d631e4b.hist.tsv --from_file --integer -O $2/TCGA-EJ-7782 -A -m