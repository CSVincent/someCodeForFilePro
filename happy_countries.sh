#!/bin/bash

lst=`curl https://en.wikipedia.org/wiki/World_Happiness_Report?action=raw | sed 's/NA/|/g' | grep 'flag' | cut -d '|' -f 8 | cut -d '}' -f 1`
echo "$lst"
