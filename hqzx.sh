#!/bin/bash
date=`date +"20%y-%m-%d"`
week=`date +"%w"`
`mkdir $date`
if [[ "$week" -ne "6" && "$week" -ne "0" ]]; then
    url="http://mod.cri.cn/hqn/hqgsh/"$date".mp3";
    #dir="./radio/".$date;
    wget $url -P $date;
fi
if [[ "$week" -eq "0" ]]; then
    echo "今天是周日，没有更新。。。"
elif [[ "$week" -eq "6" ]]; then
    echo "今天是周六，没有更新。。。"
fi
