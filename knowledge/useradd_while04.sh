#！/bin/bash

count=0
USERS_INFO=addusers.txt
USERADD=/usr/sbin/useradd
PASSWD=/usr/bin/passwd
CUT=/bin/cut

while read line
do
	USERNAME=`echo $line | cut -f1 -d ' '`
	PASSWORD=`echo $line | cut -f2 -d ' '`
	$USERADD $USERNAME
	if [[ $? ne 0 ]]; then
		echo "$USERNAME has exited;skip set passwd"
	else
		echo "$PASSWORD | $PASSWD --stdin $USERNAME"
	fi
done <$USERS_INFO