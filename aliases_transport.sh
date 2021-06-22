TRANSPORT=/home/andrew/dev/trainsstable

function busrep {
STOP=$1
  echo $STOP
  for I in {1..20} ;do
    $TRANSPORT/busexp.rb $STOP
    sleep 30
  done
}
alias stop_g='busrep 490007299G'
alias stop_h='busrep 490007299H'
