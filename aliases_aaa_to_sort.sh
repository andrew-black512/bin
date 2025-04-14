# Clipboard
    alias xclipc='xclip -i -selection clipboard'
    alias xclipco='xclip -o -selection clipboard'



## Alias related
  ALIASFILE=~/.bash_aliases
  alias edalias='edd $ALIASFILE'
  alias realias='. $ALIASFILE'


## File system related
  alias up='cd ..'
  alias mvd='mv -v -t $DEST'
  alias cpd='cp -v -t $DEST'
  alias setd='DEST=$(readlink -f .);echo DEST=$DEST'

  alias mvs='mv -v -t ~/safe/'


## CD type things


alias sshv="ssh victoria.black1.org.uk"

  #alias cdc='cd $(ls -1rd ~/work/cbt/cbt*)'
   alias cdc='g cbt'

alias cdn='cd $(ls -1rd ~/work/i*)'
alias cdd='cd $(ls -1rd ~/work/drafts/drafts*)'
alias cdno='cd ~/work/inprog_2019_03'

alias treed='tree -d'

## Dist related
    export DIST=~/work/dist
    export CALM=~/work/calm
    export s=~/scratch/temp/
    #TOx`x`DO sort out dist v distn
    alias dist='~/wd/perllib/distn.pl'
    alias distn='~/wd/perllib/distn.pl'



# Android related
  alias emulator='/home/andrew/Android/Sdk/emulator/emulator @Pixel_2_API_R -noaudio &'
  alias emul_t='/home/andrew/Android/Sdk/emulator/emulator @Pixel_C_API_R &'




mkcd () {
  mkdir -p -- "$1" && cd -P -- "$1" && pwd
}
# Varuious editors (sleep is to wait for subprocess to complete
  # general purpose editor
	edd () {
	  jedit "$@" &
	  sleep .3
	  echo
	}
  atomw () {
    echo should wait ...
    echo given "$@"
    atom -w -n $@

    sleep .3
    echo
  }

  # general purpose editor
	jed () {
	  jedit "$@" &
	  sleep .3
	  echo
	}
  # gedit - use at night....
	ged () {
	  gedit "$@" &
	  sleep .3
	  echo
	}




# OSM related
  alias osmnotes.pl='/home/andrew/dev/external/osmnotes/osmnotes.pl'
  alias osmnotes2csv.pl='/home/andrew/dev/external/osmnotes2csv/osmnotes2csv.pl'
