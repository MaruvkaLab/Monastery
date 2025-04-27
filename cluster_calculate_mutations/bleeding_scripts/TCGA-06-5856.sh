#!/bin/bash
unzip 494685b0-c051-4be5-bc7a-7ea7777fd024.zip -d $1
unzip 65a6f99f-223e-4ac6-82da-c555ebac6899.zip -d $1
rm 494685b0-c051-4be5-bc7a-7ea7777fd024.zip
rm 65a6f99f-223e-4ac6-82da-c555ebac6899.zip
$3 -N $1/65a6f99f-223e-4ac6-82da-c555ebac6899.hist.tsv -T $1/494685b0-c051-4be5-bc7a-7ea7777fd024.hist.tsv --from_file --integer -O $2/TCGA-06-5856 -A -m