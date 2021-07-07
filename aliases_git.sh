
alias gits='git  status '
alias gitl='git log --oneline --decorate'

alias gitcl='git clean -n'

# list ignored files. Otere ways of doing this
alias gitig='git status --short --ignored'

# commit (-p selects huns, -v puts diff into editor, -u no : dont display untracked)
   alias gitcp='git commit -p -v -uno'

function gitchk {
FILE=$1
  #TODO Check for file
  cp $FILE ~/safe/ -v
  git checkout -p $FILE
}
