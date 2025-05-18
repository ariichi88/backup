#! /usr/bin/env bash

set -eu

readonly BACKUP_DIR=/media/username/medianame/backupfolder
readonly BACKUP_LOG=$BACKUP_DIR/logname

cd ~

readonly DIRS=(Documents Music Photo Pictures Videos)

if [ -e $BACKUP_LOG ]; then
	echo "--------------------" $(date) "--------------------" >> $BACKUP_LOG
	for _dir in ${DIRS[@]}; do
		rsync -av --delete $_dir $BACKUP_DIR >> $BACKUP_LOG
	done
else
	for _dir in ${DIRS[@]}; do
		rsync -a $_dir $BACKUP_DIR
	done
	touch $BACKUP_LOG 
fi
