# not as general as it might be....
USB=/media/andrew/u_stripey
MEDIA=/media/andrew


function usbname {
   ls /home/andrew/scratch/usbtest/
}
#general
function uslist {
   echo
   echo $MEDIA ...
   ls -1 $MEDIA
   echo

}

#specific to current disk
alias udm='umount $USB'
alias lsflash='ls /media/andrew'
alias cdflash='cd /media/andrew/*'   # TODO more than one
alias gnoflash='gno /media/andrew/'

function umountme {

   # TODO handle case of file in /.. better
   # TODO allow a paramer, defaulting to .
   # https://unix.stackexchange.com/questions/90252/how-to-get-mount-point-of-filesystem-containing-given-file

   DEV=$(df -h . |tail -1 | awk -F% '{print $NF}' | tr -d ' ' )
   cd /media/andrew 
   echo trying to unmount $DEV 
   umount $DEV -v
}
function umountfile {    # doestt work?

   # TODO allow a paramer, defaulting to .

   DEV=$(df -h $1 |tail -1 | awk -F% '{print $NF}' | tr -d ' ' )
   cd /media/andrew 
   echo trying to unmount $DEV 
   umount $DEV -v
}


# deviec info
 alias webc="lsusb -s 1:2"

 alias findusb='find  /media/andrew/ -mtime -1'


  alias  gusb='gnome-open /media/andrew/'
