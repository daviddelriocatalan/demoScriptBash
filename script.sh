#!/usr/bin/env bash

#git --no-pager log --pretty=tformat:"%s"

echo Features
git --no-pager log --pretty=tformat:"%s" | grep "^Feat(" | sed "s/^Feat(//g" | sed "s/):/:/g" | sort -V | uniq

echo Fix
git --no-pager log --pretty=tformat:"%s" | grep "^Fix(" | sed "s/^Fix(//g" | sed "s/):/:/g" | sort -V | uniq

