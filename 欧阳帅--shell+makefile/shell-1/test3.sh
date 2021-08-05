#!/bin/bash
#
#case语句
#
echo "/**************case*************/"
case $USER in   
rich | bara)
	echo "Welcome,$USER";;
tesing)
	echo "Welcome,$USER";;
ouyangshuai)
	echo "The fourth slection"
	echo "Welcome,$USER";;
*)
	echo "Sorry,you are not allowed here";;
esac
#
#for语句
#

echo "/**************for*************/"

for test1 in fawaikuangtu zhangsan lisi wangwu zhaoliu
do
	echo "This is $test1"
done
echo "The final is $test1"
test1="zhangsan"
echo "法外狂徒$test1"

#从变量读取列表

total_name="one two three four five"
total_name=$total_name" six"
for tes in $total_name
do
	echo "number $tes"
done

#从命令读取值
echo "zhangsan lisi wangwu zhaoliu">1
file="1"
for name in $(cat $file)
do 
	echo "The name is $name"
done

#通配符遍历 

file=$(pwd)
echo $file
for fil in $file/* /home/wjj
do
	if [ -d $fil ]
	then
		echo "$fil is directory"
	elif [ -f $fil ]
	then
		echo "$fil is file"
	else
		echo "I don't know"
	fi
done
