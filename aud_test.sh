FILE=/tmp/soxrecording.wav
 sox -b 32 -e unsigned-integer -r 96k -c 2 -d --clobber --buffer $((96000*2*10)) $FILE trim 0 3
play $FILE
