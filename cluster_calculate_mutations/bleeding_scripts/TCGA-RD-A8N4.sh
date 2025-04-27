#!/bin/bash
unzip b405586e-6412-4e00-8804-ebd0146075ac.zip -d $1
unzip c3c050a3-03a7-4f12-b33e-b3c8f152c681.zip -d $1
rm b405586e-6412-4e00-8804-ebd0146075ac.zip
rm c3c050a3-03a7-4f12-b33e-b3c8f152c681.zip
$3 -N $1/c3c050a3-03a7-4f12-b33e-b3c8f152c681.hist.tsv -T $1/b405586e-6412-4e00-8804-ebd0146075ac.hist.tsv --from_file --integer -O $2/TCGA-RD-A8N4 -A -m