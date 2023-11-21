# see exp/bash for more details
function prompt_command {
    RET=$?
    export PS1=$(prompt.rb $RET)

    # start of logging
    pwd >> ~/logs/${PPID}_dirhist

}
export PROMPT_COMMAND=prompt_command
PS2='........> '
