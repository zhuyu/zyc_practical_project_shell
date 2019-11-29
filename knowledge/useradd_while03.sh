#!/bin/bash

count=0
while read line
do
	USERNAME=`echo $line | cut -f1 -d ' '`
	PASSWORD=`echo $line | cut -f2 -d ' '`
	useradd USERNAME
	echo $PASSWORD | passwd --stdin $USERNAME
done < addusers.txt