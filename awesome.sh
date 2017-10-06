#!/bin/bash
if [ $1 = '--help' ]
then
  echo "this awesome code take in 2 argument: the first one is the size limit"
  echo "the second one is the directory"
else
  K=$1
  DIR=$2
  for i in `ls $DIR`
  do
    if [ `du -b $DIR/$i | cut -f 1` -gt $K ]
    then
      echo $i
    fi
  done
fi
