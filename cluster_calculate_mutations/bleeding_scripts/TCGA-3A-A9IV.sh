#!/bin/bash
unzip 99cc27da-9e0e-488b-86b2-7a52ff204d8d.zip -d $1
unzip 78c96109-283c-484d-91d7-e8ce6b957551.zip -d $1
rm 99cc27da-9e0e-488b-86b2-7a52ff204d8d.zip
rm 78c96109-283c-484d-91d7-e8ce6b957551.zip
$3 -N $1/78c96109-283c-484d-91d7-e8ce6b957551.hist.tsv -T $1/99cc27da-9e0e-488b-86b2-7a52ff204d8d.hist.tsv --from_file --integer -O $2/TCGA-3A-A9IV -A -m