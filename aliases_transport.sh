export TRANSPORT=/home/andrew/dev/trainsstable
export TRANSPORTW=/home/andrew/dev/trains/
export RUBY=/home/andrew/exp/ruby

alias ttweb='/home/andrew/dev/trains/ttweb.rb'
alias statf='~/dev/trains/station_finder.rb'

function ttc {
  $TRANSPORTW/train_times.rb  $* |  $RUBY/file2color.rb $TRANSPORTW/traincolors.csv
}
function busrep {
  echo Legacy ..... get rid of busexp
STOP=$1
  echo $STOP
  for I in {1..20} ;do
    $TRANSPORT/busexp.rb $STOP
    sleep 30
  done
}
# no longer does loop (use rep instead)
function lived {
  STOP=$*
  echo $STOP
  $TRANSPORT/livedep.rb t $STOP
}
function rep {
  COMMAND=$*
  echo $COMMAND
  for I in {1..20} ;do
    $COMMAND
    sleep 30
  done
}

alias stop_g='busrep 490007299G'
alias stop_h='busrep 490007299H'
alias stop_bbb='busrep 490006526A'


alias stop_cat='busrep 40004410084A'
alias stop_catv='busrep 40004410224A'

alias tmpw='~/dev/trains/spec/edw_wim.sh' # |less'

#TODO
alias tt='$TRANSPORT/train_times.rb'
# Workround when format=d (default) giving quota
alias ttl='$TRANSPORT/train_times.rb --format=l'
alias ttw='/home/andrew/dev/trains/train_times.rb'

# specific lived
  alias live.edw="lived edw:lbg"
  alias live.edwo="lived edw:tuh"
  alias live.lbg.edw="lived lbg:edw"
  alias live.wimr=" lived wim:Ray | ack 19:40 -C10"

  alias live.dmk.bfr="lived dmk:bfr"
  alias live.dmk.bms="lived dmk:bms"
  
  alias live.bms.dmk="lived bms:dmk bms:hnh"
  

  ## TODO what is this
  alias tr.wim='rep spec/edw_wim.sh'
# busrep  490005875E
