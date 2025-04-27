#!/bin/bash
unzip 42547ce5-b3f3-4c4e-bae4-4ed8978b40c8.zip -d $1
unzip a527836c-24fb-40e7-8854-e106bfde4e59.zip -d $1
rm 42547ce5-b3f3-4c4e-bae4-4ed8978b40c8.zip
rm a527836c-24fb-40e7-8854-e106bfde4e59.zip
$3 -N $1/a527836c-24fb-40e7-8854-e106bfde4e59.hist.tsv -T $1/42547ce5-b3f3-4c4e-bae4-4ed8978b40c8.hist.tsv --from_file --integer -O $2/TCGA-G4-6304 -A -m