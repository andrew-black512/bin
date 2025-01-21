# WEEK=/home/andrew/scratch/25w03
# defined in aliases_auto.sh to make it easier to overide

alias rant='cat >> $WEEK/rant'
alias todo='cat >> $WEEK/todo'

alias gweek='cd $WEEK;pwd'
alias gwork='cd $WEEK/work;pwd'
alias gdraft='cd $WEEK/draft;pwd'

alias treecur='tree $WEEK'
function weekly {
    echo "initalising weekly dir $WEEK"
    mkdir -p $WEEK/draft
    mkdir -p $WEEK/work
    cd $WEEK/work
    git init
    touch test.txt
    git add test.txt
    git commit -m"add test.txt"
    
}
