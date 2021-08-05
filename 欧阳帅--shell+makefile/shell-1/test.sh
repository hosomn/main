#!/bin/bash
echo -n "The time and date are:"
date
echo "Let's see who's logged this system:"
who
echo "User info for userid:$USER"
echo "UID:$UID"
echo "HOME:$HOME"


#
#读取文件内容给变量
#
echo /************读取文件内容*****************/
input="book.txt"
count=6
while IFS=,  read -r num name
do
	if [ $count -gt 1 ]
	then
		echo -n "$num $name   "
		(( count-- ))
	else
		echo "$num $name   "
		count=6
	fi


done<"$input"

