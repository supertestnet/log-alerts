#!/bin/bash

s1=$(grep 'Z' test.txt | tail -1);
s2=$(cat lastline.txt);
if [ "$s1" != "$s2" ];
then
echo $s1 > ./lastline.txt

curl https://incomingnotificationbot.alhur.es/n/9aad08051cce12d6062c2dfac354d973 -H 'content-type: text/plain' -d "$s1"

fi
