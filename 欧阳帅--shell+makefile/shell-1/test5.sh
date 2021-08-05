#!/bin/bash
#
#提取文件信息
#
OLD=$IFS
IFS=$'\n'
for line in $( cat /etc/passwd )
do
	echo $line
	IFS=:
	for word in $line
	do
		echo $word
	done
	IFS=$'\n'
done
IFS=${OLD}

#
#操作实例
#
# /***********操作实例演示**************/
echo /**********查找可执行文件***********/
IFS=:
for folder in $PATH
do
	echo "$folder:"
	for file in $floder/*
	do
		if [ -x $file ]
		then
			echo "    $folder$file"
		fi
	done
done
IFS=$OLD
