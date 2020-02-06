#!/bin/bash
echo "press ctrl+c to cancel"
while true
do
s1=$(grep 'potentially earned' ./logs/yourLogFile.log | tail -1); #replace the phrase "yourLogFile" with the most recently updated log file in /scripts/logs/ 
s2=$(cat lastline.txt);
if [ "$s1" != "$s2" ];
then
echo "$s1" > ./lastline.txt
curl https://incomingnotificationbot.alhur.es/n/yourKey -H 'content-type: text/plain' -d "$s1" #replace the phrase "yourKey" with the key you received from the notification bot
echo "press ctrl+c to cancel"
fi
sleep 600
done
