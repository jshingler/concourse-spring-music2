#!/bin/bash
# Example Working
# 47 98 2090 Thu May 31 19:07:11 EDT 2018
#
# Example App Down  (1)
# 1 9 76 Thu May 31 19:08:40 EDT 2018
set -e
for i in {1..100000};
do
  a=$(curl jsspring-music.cfapps.io 2>1 | wc )
  b=$(date);
  echo $a $b;
done
