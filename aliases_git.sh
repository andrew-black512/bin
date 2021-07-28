#Command that I have trouble
#  remembering. or
#  typing (too many --)
#
# Moving toward
#  Common ones - no punct
#  others have a . (to avoid confusing with  eg git-receive-pack)

alias gits='git  status '
alias gitl='echo ;git log --oneline --decorate --graph'

alias git.cl='git clean -n'

# list ignored files. Otere ways of doing this
alias git.ig='git status --short --ignored'

# commit (-p selects huns, -v puts diff into editor, -u no : dont display untracked)
   alias gitcp='git commit -p -v -uno'

# This is a dangerous command to have in command histroy.
# TODO - put a check in first.
function git.chk {
FILE=$1
  #TODO Check for only one file (or few files)
  cp $FILE ~/safe/ -v
  git checkout -p $FILE
}

#vaguelly related
  alias chmod.x='chmod a+x -v'
