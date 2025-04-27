#!/bin/bash
unzip a35d0173-4ae9-4f80-b171-3c340ffa0aa9.zip -d $1
unzip 13651bed-5188-4b1d-b043-8f7359e73d5b.zip -d $1
rm a35d0173-4ae9-4f80-b171-3c340ffa0aa9.zip
rm 13651bed-5188-4b1d-b043-8f7359e73d5b.zip
$3 -N $1/13651bed-5188-4b1d-b043-8f7359e73d5b.hist.tsv -T $1/a35d0173-4ae9-4f80-b171-3c340ffa0aa9.hist.tsv --from_file --integer -O $2/TCGA-AJ-A3EK -A -m