echo bash alias with cdd + extras + up + mvs xclip mustools
function clipd() {
OFFSET=$1
echo -n $(date.py $OFFSET) | xclip -i -selection clipboard
}

function clipf() {
  FILE=$1
  readlink ./$FILE -f | xclip -i -selection clipboard
  echo clip : $( xclip -o -selection clipboard)

}
#  pipe | clip or clip >file>
    alias clip='xclip -i -selection clipboard'
    alias clips='xclip -o -selection clipboard'
    alias clipl='xclip -o -selection clipboard | less'
