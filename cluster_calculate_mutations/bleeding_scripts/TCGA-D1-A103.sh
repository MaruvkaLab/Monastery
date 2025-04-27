#!/bin/bash
unzip 7a3ee89e-8cb9-476d-9de3-cccb136f6cbb.zip -d $1
unzip 24f4834f-4ba7-44fa-9579-224f17a85d0b.zip -d $1
rm 7a3ee89e-8cb9-476d-9de3-cccb136f6cbb.zip
rm 24f4834f-4ba7-44fa-9579-224f17a85d0b.zip
$3 -N $1/24f4834f-4ba7-44fa-9579-224f17a85d0b.hist.tsv -T $1/7a3ee89e-8cb9-476d-9de3-cccb136f6cbb.hist.tsv --from_file --integer -O $2/TCGA-D1-A103 -A -m