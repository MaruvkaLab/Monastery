#!/bin/bash
unzip 8326d116-de0f-4a1a-a74f-8c865c7545e1.zip -d $1
unzip 4faaf477-01e3-43ac-8dc4-8533b1a17ed7.zip -d $1
rm 8326d116-de0f-4a1a-a74f-8c865c7545e1.zip
rm 4faaf477-01e3-43ac-8dc4-8533b1a17ed7.zip
$3 -N $1/4faaf477-01e3-43ac-8dc4-8533b1a17ed7.hist.tsv -T $1/8326d116-de0f-4a1a-a74f-8c865c7545e1.hist.tsv --from_file --integer -O $2/TCGA-5B-A90C -A -m