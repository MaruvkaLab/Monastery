#!/bin/bash
unzip 4b9f9905-c516-41f6-a967-a1bc6beb000d.zip -d $1
unzip 18374135-b64c-4f35-a803-89f29bd32a7e.zip -d $1
rm 4b9f9905-c516-41f6-a967-a1bc6beb000d.zip
rm 18374135-b64c-4f35-a803-89f29bd32a7e.zip
$3 -N $1/18374135-b64c-4f35-a803-89f29bd32a7e.hist.tsv -T $1/4b9f9905-c516-41f6-a967-a1bc6beb000d.hist.tsv --from_file --integer -O $2/TCGA-AA-A00U -A -m