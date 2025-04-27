#!/bin/bash
unzip 4abd816b-2a1b-4f72-810b-0d7e916aec48.zip -d $1
unzip a411ff51-6aaf-4249-b183-4b5f857578b6.zip -d $1
rm 4abd816b-2a1b-4f72-810b-0d7e916aec48.zip
rm a411ff51-6aaf-4249-b183-4b5f857578b6.zip
$3 -N $1/a411ff51-6aaf-4249-b183-4b5f857578b6.hist.tsv -T $1/4abd816b-2a1b-4f72-810b-0d7e916aec48.hist.tsv --from_file --integer -O $2/TCGA-BR-7901 -A -m