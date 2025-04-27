#!/bin/bash
unzip 6d97d522-09d2-4c66-9497-d32f56ea8060.zip -d $1
unzip b3059a90-0984-4780-ab34-0ba562584d5a.zip -d $1
rm 6d97d522-09d2-4c66-9497-d32f56ea8060.zip
rm b3059a90-0984-4780-ab34-0ba562584d5a.zip
$3 -N $1/b3059a90-0984-4780-ab34-0ba562584d5a.hist.tsv -T $1/6d97d522-09d2-4c66-9497-d32f56ea8060.hist.tsv --from_file --integer -O $2/TCGA-HU-A4GF -A -m