# finds alias by key or value
alias falias='alias|grep'
BIN=~/bin/
function aliashelp {
PAR=$1
if [ -z "$PAR" ]
then
      cd $BIN
      ls $BIN/aliases_*.sh
else
      less $BIN/aliases_$PAR.sh
fi


}
