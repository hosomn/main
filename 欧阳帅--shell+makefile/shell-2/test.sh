#!/bin/bash
#
#命令行参数
#
:<<!EOF!
echo /***********命令行参数***********/
OLD=$IFS
IFS=:
count=0
total=0
for text in $PATH
do
	if [ -n "$text" ]
	then
		(( total++ ))
	fi
done
for text in $PATH
do 
	if [ -n "$text" ]
	then 
		if [ $count -le $total ]
		then
			echo "$1 $text"
		else
			echo "$text"
		fi
		shift
	fi
done	
IFS=$OLD
!EOF!
echo "/*********** \$* && \$@ ************/"
echo "/*********** \$@ *********/"
for place in "$@"
do
	echo "I want to $place"
done

for place in "$*"
do
	echo "/*********** \$* *********/"
	echo "I want to $place"
done


