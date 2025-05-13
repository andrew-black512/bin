# MONTH=/home/andrew/scratch/25w03
# defined in aliases_auto.sh to make it easier to overide

alias rant='cat >> $MONTH/rant'
alias todo='cat >> $MONTH/todo'

alias gweek='cd $MONTH;pwd'
alias gwork='cd $MONTH/work;pwd'
alias gdraft='cd $MONTH/draft;pwd'
#TODO - make DRYer

alias gwork.p='cd $PREV;pwd'
alias gwork.p='cd $PREV/work;pwd'
alias gdraft.p='cd $PREV/draft;pwd'


alias treecur='tree $MONTH'
function weekly {
    set -x
    echo "initalising monthly dir $MONTH"
    mkdir -p $MONTH/draft
    mkdir -p $MONTH/work
    mkdir -p $MONTH/work/pdf   # for lilypond
    cd $MONTH/work
    git init
    touch test.txt
    git add test.txt
    git commit -m"add test.txt"
    
}
function G {
  cd $MONTH
  }
 
