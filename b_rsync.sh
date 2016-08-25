#!/bin/bash
#use rsync for back up
weekday=$(date +%w)
if [ $weekday == 2 ]; then 
   /usr/bin/rsync -azvu --exclude-from '/Volumes/backup/rsync_backup/rsync-exclude.txt' --log-file=/Volumes/backup/rsync_backup/log/rsync.log.`date +%Y-%m-%d` /Users/chester_lai/ /Volumes/backup/rsync_backup/chester_lai/first_half_week/
else
   /usr/bin/rsync -azvu --exclude-from '/Volumes/backup/rsync_backup/rsync-exclude.txt' --log-file=/Volumes/backup/rsync_backup/log/rsync.log.`date +%Y-%m-%d` /Users/chester_lai/ /Volumes/backup/rsync_backup/chester_lai/second_half_week/
fi
#/usr/bin/rsync -azvu --exclude-from 'rsync-exclude.txt' --log-file=/Volumes/backup/rsync_backup/log/rsync.log.`date +%Y-%m-%d` /Users/chester_lai/ /Volumes/backup/rsync_backup/chester_lai/
