#!/bin/bash
function wifioff {
 #set -x
 nmcli radio wifi off
}
function wifion {
 #set -x
 nmcli radio wifi on
}
function wifitog {
     nmcli radio wifi off
     sleep 1
     nmcli radio wifi on
     sleep 4
     ping www.google.com -c4
}

function susp.rep() {
  2006  systemctl suspend
#statements
}

# Thbis doesnt work.... investigate later
function echotest {
 echo line 1
 set -x
 echo line 2
 set +x
 echo line 3 - AFTER

 }
##chotest
