#!/usr/bin/bash
if [ ! -d data ]
then 
    mkdir data 
fi 

cd data 
echo "Downloading movie files"
wget -r --no-directories https://datasets.imdbws.com/name.basics.tsv.gz
gunzip -f name.basics.tsv.gz
wget -r  --no-directories https://datasets.imdbws.com/title.akas.tsv.gz
gunzip -f title.akas.tsv.gz
wget -r --no-directories https://datasets.imdbws.com/title.crew.tsv.gz
gunzip -f title.crew.tsv.gz
wget -r --no-directories https://datasets.imdbws.com/title.basics.tsv.gz
gunzip -f title.basics.tsv.gz
wget -r --no-directories https://datasets.imdbws.com/title.episode.tsv.gz
gunzip -f title.episode.tsv.gz
wget -r --no-directories https://datasets.imdbws.com/title.principals.tsv.gz
gunzip -f title.principals.tsv.gz
wget -r --no-directories https://datasets.imdbws.com/title.ratings.tsv.gz
gunzip -f title.ratings.tsv.gz
echo 'Finished downloading movie files'