echo bash alias with cdd + extras + up + mvs xclip mustools
function clipd() {
OFFSET=$1
echo -n $(date.py $OFFSET) | xclip -i -selection clipboard
}

#  pipe | clip or clip >file>
    alias clip='xclip -i -selection clipboard'
    alias clips='xclip -o -selection clipboard'
    alias clipl='xclip -o -selection clipboard | less'
