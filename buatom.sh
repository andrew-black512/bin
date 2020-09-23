#!/bin/bash



function cx {
  FILE=$1 
  echo ---------- $FILE
  cp -v -t ~/backups $FILE
  pushd ~/backups
  git commit $FILE -m"update $FILE"
  popd 
}

cd ~
cx add_alias
cx .gitconfig
cx .bash_aliases
cx .bookmarks.data



