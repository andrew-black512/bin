#!/bin/sh



alias cx='cp -v -t ~/backups' 

cx ~/add_alias
cx ~/.bash_aliases

cd ~/backups
git commit .b* -m'update'
git commit * -m'update'

