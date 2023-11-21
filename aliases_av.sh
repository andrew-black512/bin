# Meet
  export MEET=/home/andrew/work/meet
  function meet {
    meet.pl "$*" &
    amixer -D pulse sset Master 100%
   }
   function cow {
     meet "cow"
     amixer -D pulse sset Master 0%
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
# pdf
 function oku {
   okular $* &
 }
alias nopdf="killall evince;killall okular"

# network
  alias pg="ping     www.google.com -c4"
