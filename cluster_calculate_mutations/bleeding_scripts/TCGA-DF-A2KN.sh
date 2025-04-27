#!/bin/bash
unzip b7aacd1c-a67f-445c-bbfe-9a59749093ae.zip -d $1
unzip ac4da161-8f61-4f83-9bdb-3455f6daab93.zip -d $1
rm b7aacd1c-a67f-445c-bbfe-9a59749093ae.zip
rm ac4da161-8f61-4f83-9bdb-3455f6daab93.zip
$3 -N $1/ac4da161-8f61-4f83-9bdb-3455f6daab93.hist.tsv -T $1/b7aacd1c-a67f-445c-bbfe-9a59749093ae.hist.tsv --from_file --integer -O $2/TCGA-DF-A2KN -A -m