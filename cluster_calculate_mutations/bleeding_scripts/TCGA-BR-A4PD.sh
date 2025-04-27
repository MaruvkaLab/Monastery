#!/bin/bash
unzip 1e39fc34-7f76-4f69-a15e-89467b59f941.zip -d $1
unzip 2992e063-827b-4c26-9e09-6fa87aa36eff.zip -d $1
rm 1e39fc34-7f76-4f69-a15e-89467b59f941.zip
rm 2992e063-827b-4c26-9e09-6fa87aa36eff.zip
$3 -N $1/2992e063-827b-4c26-9e09-6fa87aa36eff.hist.tsv -T $1/1e39fc34-7f76-4f69-a15e-89467b59f941.hist.tsv --from_file --integer -O $2/TCGA-BR-A4PD -A -m