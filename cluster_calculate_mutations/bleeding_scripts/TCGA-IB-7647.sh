#!/bin/bash
unzip ce6ea6e8-472b-4932-9683-b9695b845e0e.zip -d $1
unzip 4e4fdb28-f321-4a31-b4fd-ee9a8f58994c.zip -d $1
rm ce6ea6e8-472b-4932-9683-b9695b845e0e.zip
rm 4e4fdb28-f321-4a31-b4fd-ee9a8f58994c.zip
$3 -N $1/4e4fdb28-f321-4a31-b4fd-ee9a8f58994c.hist.tsv -T $1/ce6ea6e8-472b-4932-9683-b9695b845e0e.hist.tsv --from_file --integer -O $2/TCGA-IB-7647 -A -m