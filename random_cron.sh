#!/bin/zsh

 #if [[ $(date '+%H') == 08 ]];then
 #    time="5 8 * * *"
 #elif [[ $(date '+%H') == 10 ]];then
 #    time="5 10 * * *"
 #elif [[ $(date '+%H') == 11 ]];then
 #    time="5 11 * * *"
 #elif [[ $(date '+%H') == 12 ]];then
 #    time="5 12 * * *"
 #elif [[ $(date '+%H') == 13 ]];then
 #    time="5 13 * * *"
 #elif [[ $(date '+%H') == 17 ]];then
 #    time="5 17 * * *"
 #elif [[ $(date '+%H') == 19 ]];then
 #    time="5 19 * * *"
 #else
     time="5 8,10,11,12,13,17,19 * * *"
 #fi
if [[ ( $(date '+%H') == 08 ) || ( $(date '+%H') == 10 )  || ( $(date '+%H') == 11 )  || ( $(date '+%H') == 12 )  || ( $(date '+%H') == 13 )  || ( $(date '+%H') == 17 )  || ( $(date '+%H') == 19 ) ]] ;then
   time="5 8,10,11,12,13,17,19 * * *"
    echo 当前时间为$(date '+%H')时，计划运行时间$time
    sed -i '/cron:/d' .github/workflows/run.yml
    sed -i '/schedule/a\    - cron: '$time'' .github/workflows/run.yml
    exit 0
else
    exit 0
fi
