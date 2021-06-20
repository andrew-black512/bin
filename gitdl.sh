#!/bin/bash
FILE=$*
echo Diff
git diff $FILE
echo
echo Recent changes:
git log -n 3 --oneline --decorate $FILE
