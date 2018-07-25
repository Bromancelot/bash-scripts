#!/bin/bash
#set -v -x
 
FLOOR=1
RANGE=5
number=0
while [ "$number" -lt $FLOOR ]
do
  number=$RANDOM
  let "number %= $RANGE"
done
#number=3
case $number in
   1)
       color="ACME=1"
       ;;
   2)
       color="WHITEGRAY=1"
       ;;
   3)
       color="ACME_GREENBLACK=1"
       ;;
   4)
       color="ACME_GREENGRAY=1"
       ;;
esac
 
echo $color > ~/.SciTEUser.properties
cat ~/.SciTEUser.properties.template >> ~/.SciTEUser.properties
 
/usr/bin/SciTE "-font.base=font:Liberation Mono,size:10" "${@}" > /dev/null 2>&1 &