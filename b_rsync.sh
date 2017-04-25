#!/bin/bash
#use rsync for back up
weekday=$(date +%w)
if [ $weekday == 1 ] || [ $weekday == 3 ]; then
   /usr/bin/rsync -azvu --exclude-from '/Volumes/backup/rsync_backup/rsync-exclude.txt' --log-file=/Volumes/backup/rsync_backup/log/rsync.log.`date +%Y-%m-%d` /Users/chester_lai/ /Volumes/backup/rsync_backup/chester_lai/1_3/
else
   /usr/bin/rsync -azvu --exclude-from '/Volumes/backup/rsync_backup/rsync-exclude.txt' --log-file=/Volumes/backup/rsync_backup/log/rsync.log.`date +%Y-%m-%d` /Users/chester_lai/ /Volumes/backup/rsync_backup/chester_lai/2_4_5/
fi
#/usr/bin/rsync -azvu --exclude-from 'rsync-exclude.txt' --log-file=/Volumes/backup/rsync_backup/log/rsync.log.`date +%Y-%m-%d` /Users/chester_lai/ /Volumes/backup/rsync_backup/chester_lai/
