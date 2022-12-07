alias gd='gdrive_date.py 20  -1  | clip'
function gdr  {
ST=$(gdrive_date.py $*)
echo string:$ST
echo $ST | xclip -i -selection clipboard
}
