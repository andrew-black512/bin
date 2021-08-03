# https://stackoverflow.com/questions/3058325/what-is-the-difference-between-ps1-and-prompt-command
function prompt_command {
    RET=$?
    export PS1=$(prompt.rb $RET)

    # start of logging
    pwd >> ~/logs/${PPID}_dirhist

}
#PROMPT_DIRTRIM=3
export PROMPT_COMMAND=prompt_command
 #export PROMPT_COMMAND='echo -n [$(date +%k:%M:%S)]  $( basename $(readlink -f .))'
# export PS1="$ "
PS2='........> '
