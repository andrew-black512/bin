#!/bin/bash
# Does DIFF and Brief LOG.
# Log is to cover 2 cases
#   - file not in git
#   - file recently changed and I have forgotten that I have commited.
FILE=$*
echo Diff
git diff $FILE
echo
echo Recent changes:
git log -n 3 --oneline --decorate $FILE
#TODO - move and make a functionWq
#TODO - moe / rehash
