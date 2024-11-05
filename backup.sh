#! /usr/bin/env bash

set -eu

readonly bakdir=
readonly baklog=

cd ~

dirs=(Documents Music Photo Pictures Videos)

if [ -e $baklog ]; then
	echo "--------------------" $(date) "--------------------" >> $baklog
	for dir in ${dirs[@]}; do
		rsync -av --delete $dir $bakdir >> $baklog
	done
else
	for dir in ${dirs[@]}; do
		rsync -a $dir $bakdir
	done
	touch $baklog 
fi
