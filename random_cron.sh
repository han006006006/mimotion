#!/bin/zsh

 if [[ $(date '+%H') == 08 ]];then
     time="1 8 * * *"
 elif [[ $(date '+%H') == 10 ]];then
     time="1 10 * * *"
 elif [[ $(date '+%H') == 11 ]];then
     time="1 11 * * *"
 elif [[ $(date '+%H') == 12 ]];then
     time="1 12 * * *"
 elif [[ $(date '+%H') == 13 ]];then
     time="1 13 * * *"
 elif [[ $(date '+%H') == 17 ]];then
     time="1 17 * * *"
 elif [[ $(date '+%H') == 19 ]];then
     time="1 19 * * *"
 else
     time="1 8,10,11,12,13,17,19 * * *"
 fi
#if [[ ( $(date '+%H') == 00 ) || ( $(date '+%H') == 03 )  || ( $(date '+%H') == 05 )  || ( $(date '+%H') == 07 )  || ( $(date '+%H') == 09 )  || ( $(date '+%H') == 11 )  || ( $(date '+%H') == 13 ) ]] ;then
#   time=$(($RANDOM%10))" 0,2,5,7,9,11,13 * * *"
    echo 当前时间为$(date '+%H')时，计划运行时间$time
    sed -i '/cron:/d' .github/workflows/run.yml
    sed -i '/schedule/a\    - cron: '$time'' .github/workflows/run.yml
    exit 0
#else
#    exit 0
#fi
