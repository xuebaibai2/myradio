#!/bin/bash

tags='环球故事会'

#date=`date +"20%y-%m-%d"`
date='2016-05-06'
week=`date +"%w"`
if [[ "$week" -ne "6" && "$week" -ne "0" ]]; then
        url="http://mod.cri.cn/hqn/hqgsh/"$date".mp3";
                if wget $url -P $date; then
                    echo `node add_pocket.js add -u $url -t $date -g $tags`>>record
                fi
            fi
            if [[ "$week" -eq "0" ]]; then
                    echo "今天是周日，没有更新。。。"
                elif [[ "$week" -eq "6" ]]; then
                        echo "今天是周六，没有更新。。。"
                    fi
