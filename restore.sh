#!/bin/bash

filename=$1
if [ -d "./recovered/$filename" ]
then
  rm -rf "./recovered/$filename"
else
  mkdir -p "./recovered/$filename"
fi
newest=`ls /subm/u5781033/backups/ | grep $filename | sort -b | tail -n 1`
cp -r /subm/u5781033/backups/$newest ./recovered/$filename
echo "$filename has been restored to ./recovered/$filename"
