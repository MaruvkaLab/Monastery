#!/bin/bash
unzip 5699121c-beb4-403f-a102-47b26a5d0601.zip -d $1
unzip a530efb1-744c-4646-8b9d-331b5f68bb33.zip -d $1
rm 5699121c-beb4-403f-a102-47b26a5d0601.zip
rm a530efb1-744c-4646-8b9d-331b5f68bb33.zip
$3 -N $1/a530efb1-744c-4646-8b9d-331b5f68bb33.hist.tsv -T $1/5699121c-beb4-403f-a102-47b26a5d0601.hist.tsv --from_file --integer -O $2/TCGA-A6-6654 -A -m