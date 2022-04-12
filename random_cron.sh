#!/bin/zsh

 if [[ $(date '+%H') == 08 ]];then
     time=$(($RANDOM%10))" 08 * * *"
 elif [[ $(date '+%H') == 10 ]];then
     time=$(($RANDOM%10))" 10 * * *"
 elif [[ $(date '+%H') == 11 ]];then
     time=$(($RANDOM%10))" 11 * * *"
 elif [[ $(date '+%H') == 12 ]];then
     time=$(($RANDOM%10))" 12 * * *"
 elif [[ $(date '+%H') == 15 ]];then
     time=$(($RANDOM%10))" 15 * * *"
 elif [[ $(date '+%H') == 17 ]];then
     time=$(($RANDOM%5))" 17 * * *"
 elif [[ $(date '+%H') == 19 ]];then
     time=$(($RANDOM%10))" 19 * * *"
 else
     time=$(($RANDOM%10))" 0,2,5,7,9,11,13 * * *"
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
