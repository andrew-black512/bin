# CURR=/home/andrew/scratch/25w03
# TODO - sep
alias rant='cat >> $CURR/rant'
alias todo='cat >> $CURR/todo'

alias gcur='cd $CURR;pwd'
alias gwork='cd $CURR/work;pwd'
alias treecur='tree $CURR'
function weekly {
    echo "initalising weekley dir $CURR"
    mkdir -p $CURR/draft
    mkdir -p $CURR/work
    cd $CURR/work
    git init
    touch test.txt
    git add test.txt
    git commit -m"add test.txt"
    
}
