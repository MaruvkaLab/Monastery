#!/bin/bash
unzip ae432112-c546-48fc-b94a-8bf0300e2a1c.zip -d $1
unzip c1eac0d7-fe04-4f1b-b998-cb66b37cd9d0.zip -d $1
rm ae432112-c546-48fc-b94a-8bf0300e2a1c.zip
rm c1eac0d7-fe04-4f1b-b998-cb66b37cd9d0.zip
$3 -N $1/c1eac0d7-fe04-4f1b-b998-cb66b37cd9d0.hist.tsv -T $1/ae432112-c546-48fc-b94a-8bf0300e2a1c.hist.tsv --from_file --integer -O $2/TCGA-CM-6680 -A -m