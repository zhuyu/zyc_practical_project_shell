#!/bin/bash

count = 0
for line in `cat addusers.txt`
do
	echo $line
	let count+=1
done
echo
echo "$0 loop $count times"