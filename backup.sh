#! /usr/bin/env bash

set -eu

readonly bakdir=
readonly baklog=

cd ~

dirs=(Documents Music Photo Pictures Videos)

if [ -e $baklog ]; then
	for dir in ${dirs[@]}; do
		rsync -an $dir $bakdir
	done
	touch $baklog 
else
	for dir in ${dirs[@]}; do
		rsync -avn --delete $dir $bakdir >> $baklog
	done
fi
