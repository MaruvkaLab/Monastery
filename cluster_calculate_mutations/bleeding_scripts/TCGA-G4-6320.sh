#!/bin/bash
unzip 039c63ff-a5e6-4865-8d30-db084aa01d00.zip -d $1
unzip 14141cac-5f56-4c47-a2f0-6f14d1e6d545.zip -d $1
rm 039c63ff-a5e6-4865-8d30-db084aa01d00.zip
rm 14141cac-5f56-4c47-a2f0-6f14d1e6d545.zip
$3 -N $1/14141cac-5f56-4c47-a2f0-6f14d1e6d545.hist.tsv -T $1/039c63ff-a5e6-4865-8d30-db084aa01d00.hist.tsv --from_file --integer -O $2/TCGA-G4-6320 -A -m