#!/bin/bash

DATE=`date '+%Y-%m-%d_%H:%M:%S'`
src=$1
filename=`basename $src`
mkdir -p /subm/u5781033/backups
cp -r $src "/subm/u5781033/backups/"
mv "/subm/u5781033/backups/$filename" "/subm/u5781033/backups/$filename"_"$DATE"
echo "Backup $filename completed successfully."
