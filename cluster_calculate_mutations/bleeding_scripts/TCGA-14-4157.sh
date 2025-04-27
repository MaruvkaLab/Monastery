#!/bin/bash
unzip 1bf35eb1-c434-4212-bc0b-6c078278eb38.zip -d $1
unzip 70792eff-7a76-4e5a-990c-be80854e6fc8.zip -d $1
rm 1bf35eb1-c434-4212-bc0b-6c078278eb38.zip
rm 70792eff-7a76-4e5a-990c-be80854e6fc8.zip
$3 -N $1/70792eff-7a76-4e5a-990c-be80854e6fc8.hist.tsv -T $1/1bf35eb1-c434-4212-bc0b-6c078278eb38.hist.tsv --from_file --integer -O $2/TCGA-14-4157 -A -m