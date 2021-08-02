#!/bin/bash

## Backs up atom config files (unclear if can be in a local .git)
## cloned from ~/bin/bu.sh


function cx {
  FILE=$1
  echo ---------- $FILE
  cp -v -t ~/backups_d/atom $FILE
  pushd ~/backups_d/atom
  git commit $FILE -m"update $FILE"
  popd
}

cd ~/.atom

cx config.cson

cx keymap.cson
cx styles.less
