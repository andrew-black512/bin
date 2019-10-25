#!/bin/bash
NAME=~/mozilla.pdf
DEST=~/scratch/pdf/
DESTNAME=extract
echo Look for $NAME

NUM=1
while :; do
  if [ -f $NAME ]; then
	 #mv -v $NAME $DEST/${DESTNAME}_$NUM.pdf
	 
	 # Temp version to only keep thje first page (map the paths workwround)
 	 pdfseparate -l 1  $NAME $DEST/${DESTNAME}_$NUM.pdf
 	 mv -v $NAME $DEST/safe/${DESTNAME}_$NUM.pdf 
 	 ls -lrt $DEST/${DESTNAME}_*
     let NUM++
fi
 
 
	 sleep 1
 done 
