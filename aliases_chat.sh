# Chat related thinst including calm
export CALM=~/work/calm
alias chat=/home/andrew/wd/perllib/chat_emul.pl


# Calm
  #TODO rename ths file...
  calmprocess=~/dev/tools/calm.pl
  #### alias calm='perl  /home/andrew/wd/perllib/calm.pl'  ## old
  alias calmu="perl -ibak/*.bak $calmprocess"
  alias calmt='ack "^\d\d:\d\d" -m1 --nopager --sort-files '

  function  calmr {
  #todo - remove calmr.sh which this replaces
    # get id into paste buffer
    calmid.sh
    chrome.pl c  # TODO expand 
    #g calmc #- TODO alias issue
    cd /home/andrew/work/calm/23_09
     

  }
