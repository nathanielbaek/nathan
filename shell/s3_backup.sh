#!/bin/bash
date=`date +%Y-%m-%d`
file=`/data/backup/"$date".tar.gz`
git=`find /data/backup/git/ -type f -mtime -1 -exec ls {} \;`
jenkins=`find /data/backup/jenkins/ -type f -mtime -1 -exec ls {} \;`
svn=`find /data/backup/svn/ -type f -mtime -1 -exec ls {} \;`
redmine=`find /data/backup/redmine/ -type f -mtime -1 -exec ls {} \;`

tar cvfz /data/backup/"$date".tar.gz /data/backup/$date && rm -rf /data/backup/$date
aws s3 cp /data/backup/"$date".tar.gz s3://server-backup/
aws s3 cp $git s3://server-backup/git/
aws s3 cp $jenkins s3://server-backup/jenkins/
aws s3 cp $svn s3://server-backup/svn/
aws s3 cp "$redmine" s3://server-backup/redmine/

exit
