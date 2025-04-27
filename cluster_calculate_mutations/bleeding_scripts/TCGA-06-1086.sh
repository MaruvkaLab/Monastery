#!/bin/bash
unzip 0299c399-f301-444a-b7c4-57fa96ef5e2f.zip -d $1
unzip 0148fc66-05c6-489c-af47-26d12cbd898d.zip -d $1
rm 0299c399-f301-444a-b7c4-57fa96ef5e2f.zip
rm 0148fc66-05c6-489c-af47-26d12cbd898d.zip
$3 -N $1/0148fc66-05c6-489c-af47-26d12cbd898d.hist.tsv -T $1/0299c399-f301-444a-b7c4-57fa96ef5e2f.hist.tsv --from_file --integer -O $2/TCGA-06-1086 -A -m