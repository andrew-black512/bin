#Command that I have trouble
#  remembering. or
#  typing (too many --)
#
# Moving toward
#  Common ones - no punct
#  others have a . (to avoid confusing with  eg git-receive-pack)

# TODO-ADD
## git branch --merged master ;echo unmerged:; git branch --no-merged master


# Status things
alias gits='git  status '
# try followimg fpr a bit
alias git.s='gits  --short --untracked=no'

# Log type things
alias gitl='echo ;git log --oneline --decorate --graph'
alias git.recent='git log --oneline -n3'
alias git.cl='git clean -n'

# list ignored files. Otere ways of doing this
alias git.ig='git status --short --ignored'

# commit (-p selects hunks, -v puts diff into editor, -u no : dont display untracked)
#TODO-Q  consider a git log one (to get full comment)
#  ';echo ;git.recent' didnt work as it messed up param passing. Wait until I write a ruby version

   alias gitcp='git commit -p -v -uno'

alias gith='git help'

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
