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

# man
  alias git.man="man git"
  alias git.ls='git ls-files'

# Log type things
alias gitl='echo ;git log --oneline --decorate --graph'
alias git.recent='git log --oneline -n3'
alias git.cl='git clean -n'

# list ignored files. Otere ways of doing this
alias git.ig='git status --short --ignored'

#TODO-Q  consider a git log one (to get full comment)
#  ';echo ;git.recent' didnt work as it messed up param passing. Wait until I write a ruby version

   alias gitcp='git commit -p -v -uno' 
   #  -p  (patch) select hunks
   #   u=no means dont show untracked 
   #  -v puts the diffs into the template commit message
   alias gitc='git commit -v -uno' 
   

   

alias gith='git help'

# This is a dangerous command to have in command histroy.
# TODO - put a check in first.
function git.chk {
FILE=$1
  #TODO Check for only one file (or few files)
  cp $FILE ~/safe/ -v
  git checkout -p $FILE
}
alias git.empt='git commit --allow-empty --allow-empty-message -m ""'
alias git.showconflict="ack '>>>|===|<<<' --color -C10| less -r "

function git.sel {
PERLLIB=/home/andrew/wd/perllib
  perl -I $PERLLIB/lib $PERLLIB/bzr_sel_commit.pl

}


#vaguelly related
  alias chmod.x='chmod a+x -v'

#----------------------------------------------------------------------
# Shows branches with descriptions
function git.br() {
  current=$(git rev-parse --abbrev-ref HEAD)
  branches=$(git for-each-ref --format='%(refname)' refs/heads/ | sed 's|refs/heads/||')
  for branch in $branches; do
    desc=$(git config branch.$branch.description)
    if [ $branch == $current ]; then
      branch="* \033[0;32m$branch\033[0m"
     else
       branch="  $branch"
     fi
     echo -e "$branch      \033[0;36m$desc\033[0m"
  done
}
## https://stackoverflow.com/questions/2108405/branch-descriptions-in-git




# added 
# Alias (add this to your ~/.bashrc, ~/.zshrc, or similar shell configuration file)
alias gitroot='git rev-parse --show-prefix'

# Function (add this to your ~/.bashrc, ~/.zshrc, or similar shell configuration file)
git_relative_path() {
  local root=$(git rev-parse --show-toplevel 2>/dev/null)
  if [ $? -ne 0 ]; then
    echo "Not in a git repository."
    return 1
  fi
  local pwd_relative=$(pwd | sed "s|^$root/||")
  echo "$pwd_relative"
}

#TODO move 
alias gitsum1="python /home/andrew/scratch/25w12/work/git_exp_repos.py | less"