#!/usr/bin/env bash

for i in $(schroot --list --all-sessions)
do
	echo -e "Down => $i"
	schroot -e -c $(echo $i|awk -F':' '{print $2}')
done
