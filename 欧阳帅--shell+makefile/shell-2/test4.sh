#!/bin/bash
#
#signal trapper
#
exec 3>&1
exec 1> text.txt
trap "echo 'The signal is invalid'" SIGINT
trap "echo Goodbye..." EXIT

echo "The command ran in $( date +%B%d,%T)"
count=1
while [ $count -le 5 ]
do
	echo "$count"
	sleep 1
	count=$[ $count + 1 ]
done

ps -aux|grep test4

