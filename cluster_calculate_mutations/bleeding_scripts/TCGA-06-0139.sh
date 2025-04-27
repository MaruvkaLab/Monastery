#!/bin/bash
unzip e18dd86a-84b3-44cb-9681-8dacde4cb8cc.zip -d $1
unzip 86016b9e-8db4-4cf4-a2ae-5da5ceb0f639.zip -d $1
rm e18dd86a-84b3-44cb-9681-8dacde4cb8cc.zip
rm 86016b9e-8db4-4cf4-a2ae-5da5ceb0f639.zip
$3 -N $1/86016b9e-8db4-4cf4-a2ae-5da5ceb0f639.hist.tsv -T $1/e18dd86a-84b3-44cb-9681-8dacde4cb8cc.hist.tsv --from_file --integer -O $2/TCGA-06-0139 -A -m