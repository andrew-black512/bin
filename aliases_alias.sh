# finds alias by key or value
alias falias='alias|grep'
BIN=~/bin/
function aliashelp {
   less $BIN/aliases_$1.sh

}
