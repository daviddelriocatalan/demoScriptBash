#!/usr/bin/env bash

#git --no-pager log --pretty=tformat:"%s"

echo Features
git --no-pager log --pretty=tformat:"%s" | grep "^Feat(" | sed "s/^Feat(//g" | sed "s/):/:/g" | sort -V | uniq

echo Fix
git --no-pager log --pretty=tformat:"%s" | grep "^Fix(" | sed "s/^Fix(//g" | sed "s/):/:/g" | sort -V | uniq



#echo <html>
#echo <body>
#echo <h1>Features</h1>
#git --no-pager log --pretty=tformat:"%s" | grep "^Feat(" | sed "s/^Feat(//g" | sed "s/):/:/g" | sort -V | uniq | while read line 
#do
#echo <p> $line </p>
#done
#echo </br> 
#echo </br>
#echo <h1>Fix</h1>
#git --no-pager log --pretty=tformat:"%s" | grep "^Fix(" | sed "s/^Fix(//g" | sed "s/):/:/g" | sort -V | uniq | while read line 
#do
#echo <p> $line </p>
#done
#echo </body>
#echo </html>
