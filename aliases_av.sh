# Meet
  export MEET=/home/andrew/work/meet
  function meet {
    meet.pl "$*" &
  }
#browsers
 function cf  {
   cd /home/andrew/dev/tools/
   ack =\>  firefox.pl chrome.pl
 }
 function ch {
   ( chrome.pl "$*" || cf )  &
 }
 function ff {
   firefox.pl "$*" &
 }
# network
  alias pg="ping     www.google.com -c4"
