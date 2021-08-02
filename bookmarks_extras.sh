alias br='bookmarks -r bash'
alias bh='bookmarks |less'
alias pd='pushd'

# looks for bookmarks for current directory (or subdirectory)
# TODO make function and add param
alias b1f='grep $(readlink -f ..) ~/.bookmarks.data'
alias bf2='grep $(readlink -f ../..) ~/.bookmarks.data'
alias bf='grep $(readlink -f .) ~/.bookmarks.data'
