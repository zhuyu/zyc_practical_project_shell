#!/bin/bash

count=0
while read line 
do
	echo $line
	let count+=1
done < addusers.txt

echo 
echo "$0 loop $count times"
