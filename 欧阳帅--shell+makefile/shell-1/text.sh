#!/bin/bash
for name in zhangsan lisi wangwu zhaoliu qianqi sunba
do 
	num=6
	while [ $num -gt 0 ]
	do
		echo "$num,$name"
		(( num-- ))
	done
done | sort > book.txt

