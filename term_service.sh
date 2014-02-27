#!/bin/bash
#

sdptool add SP
rfcomm watch 0 1 &
while true
do
  if [ -c /dev/rfcomm0 ]
  then
  	getty -L rfcomm0 115200 vt220
  fi
done