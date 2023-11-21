# finds alias by key or value
alias falias='alias|grep'
BIN=~/bin

function histsum {
FILE=$1  #TODO
    history 20 | history_san.pl  

}


function aliashelp {
PAR=$1
FILE=$BIN/aliases_$PAR.sh
if [ -f "$FILE" ]
then
      less $FILE
else
      cd $BIN
      pwd
      ls aliases_*.sh
fi


}
