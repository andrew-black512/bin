# $0 doesnt work in this context ;-(
THISFILE=$(readlink -f ~/bin/bookmarks_extras.sh)

alias br='bookmarks -r bash'
alias bh="(bookmarks;cat $THISFILE) |less"
alias pd='pushd'
alias po='popd'
function sw {    # swap.
  pushd
}
function dv {
    echo first two swap with pushd pd or sw
    dirs -v
}

# looks for bookmarks for current directory (or subdirectory)
# TODO make function and add param
alias bf1='grep $(readlink -f ..) ~/.bookmarks.data'
alias bf2='grep $(readlink -f ../..) ~/.bookmarks.data'
alias bf='grep $(readlink -f .) ~/.bookmarks.data'
