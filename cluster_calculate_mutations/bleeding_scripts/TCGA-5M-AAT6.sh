#!/bin/bash
unzip 260f7645-4a32-43ee-8de3-5c12b00f6fc7.zip -d $1
unzip 1b094461-362f-4b03-926b-0818d205646d.zip -d $1
rm 260f7645-4a32-43ee-8de3-5c12b00f6fc7.zip
rm 1b094461-362f-4b03-926b-0818d205646d.zip
$3 -N $1/1b094461-362f-4b03-926b-0818d205646d.hist.tsv -T $1/260f7645-4a32-43ee-8de3-5c12b00f6fc7.hist.tsv --from_file --integer -O $2/TCGA-5M-AAT6 -A -m