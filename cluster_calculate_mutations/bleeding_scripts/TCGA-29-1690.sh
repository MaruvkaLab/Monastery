#!/bin/bash
unzip b8dfbdd5-ee86-45a6-b648-1d75d0408c66.zip -d $1
unzip c2787c79-1ba1-4aab-98b6-96c2e79daff0.zip -d $1
rm b8dfbdd5-ee86-45a6-b648-1d75d0408c66.zip
rm c2787c79-1ba1-4aab-98b6-96c2e79daff0.zip
$3 -N $1/c2787c79-1ba1-4aab-98b6-96c2e79daff0.hist.tsv -T $1/b8dfbdd5-ee86-45a6-b648-1d75d0408c66.hist.tsv --from_file --integer -O $2/TCGA-29-1690 -A -m