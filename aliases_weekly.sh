# WEEK=/home/andrew/scratch/25w03
# defined in aliases_auto.sh to make it easier to overide

alias rant='cat >> $WEEK/rant'
alias todo='cat >> $WEEK/todo'

alias gweek='cd $WEEK;pwd'
alias gwork='cd $WEEK/work;pwd'
alias gdraft='cd $WEEK/draft;pwd'
#TODO - make DRYer
alias gwork.p='cd $PREV;pwd'
alias gwork.p='cd $PREV/work;pwd'
alias gdraft.p='cd $PREV/draft;pwd'


alias treecur='tree $WEEK'
function weekly {
    echo "initalising weekly dir $WEEK"
    mkdir -p $WEEK/draft
    mkdir -p $WEEK/work
    mkdir -p $WEEK/work/pdf   # for lilypond
    cd $WEEK/work
    git init
    touch test.txt
    git add test.txt
    git commit -m"add test.txt"
    
}
