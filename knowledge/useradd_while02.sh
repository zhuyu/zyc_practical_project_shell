#!/bin/bash

count=0
while read line
do
	USERNAME=`echo $line | cut -f1 -d ' '`
	PASSWORD=`echo $line | cut -f2 -d ' '`
	echo -n "USERNAME:$USERNAME PASSWORD:$PASSWORD" 
	echo
done < addusers.txt
