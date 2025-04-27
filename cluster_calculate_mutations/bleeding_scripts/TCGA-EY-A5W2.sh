#!/bin/bash
unzip ac215d03-a49d-4977-9a7c-6b331ae06c80.zip -d $1
unzip 0f8388f0-d61a-4bb5-953d-9d87072a14fa.zip -d $1
rm ac215d03-a49d-4977-9a7c-6b331ae06c80.zip
rm 0f8388f0-d61a-4bb5-953d-9d87072a14fa.zip
$3 -N $1/0f8388f0-d61a-4bb5-953d-9d87072a14fa.hist.tsv -T $1/ac215d03-a49d-4977-9a7c-6b331ae06c80.hist.tsv --from_file --integer -O $2/TCGA-EY-A5W2 -A -m