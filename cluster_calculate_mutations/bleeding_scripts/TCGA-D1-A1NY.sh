#!/bin/bash
unzip 0a2fa38d-7a61-4d58-b8b8-bc3aaf369926.zip -d $1
unzip c72f6031-479b-432e-82d7-5308c08ad7e5.zip -d $1
rm 0a2fa38d-7a61-4d58-b8b8-bc3aaf369926.zip
rm c72f6031-479b-432e-82d7-5308c08ad7e5.zip
$3 -N $1/c72f6031-479b-432e-82d7-5308c08ad7e5.hist.tsv -T $1/0a2fa38d-7a61-4d58-b8b8-bc3aaf369926.hist.tsv --from_file --integer -O $2/TCGA-D1-A1NY -A -m