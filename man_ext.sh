COM=$1 
MANEXT=~/bin/man_output
# produces a blank file if man non-existant
man ${COM} > ${MANEXT}/man_${COM}
