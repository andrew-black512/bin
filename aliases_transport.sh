export TRANSPORT=/home/andrew/dev/trainsstable

alias ttweb='/home/andrew/dev/trains/ttweb.rb'
alias statf='~/dev/trains/station_finder.rb'

function busrep {
  echo Legacy ..... get rid of busexp
STOP=$1
  echo $STOP
  for I in {1..20} ;do
    $TRANSPORT/busexp.rb $STOP
    sleep 30
  done
}
function lived {
  STOP=$*
  echo $STOP
  for I in {1..20} ;do
    $TRANSPORT/livedep.rb t $STOP
    sleep 30
  done
}
function rep {
  COMMAND=$*
  echo $COMMAND
  for I in {1..20} ;do
    $COMMAND
    sleep 30
  done
}
alias tr.wim='rep spec/edw_wim.sh'


alias stop_g='busrep 490007299G'
alias stop_h='busrep 490007299H'

alias tmpw='~/dev/trains/tmp_tuh.sh'

#TODO
alias tt='$TRANSPORT/train_times.rb'
alias ttw='/home/andrew/dev/trains/train_times.rb'
