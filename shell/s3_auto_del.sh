#!/bin/bash

# 20170717 ohyun.baek

aws s3 ls s3://s3-backup/$1 | while read -r line;
  do
    createDate=`echo $line|awk {'print $1" "$2'}`
    createDate=`date -d"$createDate" +%s`
    olderThan=`date -d"14 day ago" +%s`
    if [[ $createDate -lt $olderThan ]]
      then
        fileName=`echo $line|awk {'print $4'}`
        echo $fileName
        if [[ $fileName != "" ]]
          then
            aws s3 rm s3://s3-backup/$1"$fileName"
        fi
    fi
  done;
