#!/bin/bash
#

sdptool add SP &> /dev/null
rfcomm watch 0 1 &> /dev/null
getty -L rfcomm0 115200 vt220 &