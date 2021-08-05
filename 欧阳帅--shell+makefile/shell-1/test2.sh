#!/bin/bash
#
# 检测目录
#
dir=/home/ouyangshuai

if [ -d $dir ]
then
	echo "The directory is exist"
	cd $dir
	ls -la
else
	echo "The directory is not exist"
fi

#
#检测对象是否存在
#
dir2=/ouyangshuai/float.sh
if [ -d $HOME ]&&[ -x $HOME$dir2 ]
then
	echo "The file can be executed"
	$HOME$dir2
else
	echo "The file can not be executed"
fi

#
#双括号的使用  
#
var1=45
var2=15
if (( $var1 > $var2 ))
then
	echo "$var1>$var2"
else
	echo "$var1<$var2"
fi

#
#双方括号的使用
#
use=ouyanshuai
if [[ $USER == $use ]]
then 
	echo "Hello ouyangshuai"
else
	echo "Sorry,I don't know you"
fi

str1='test'
str2='Test'
if [[ $str1 > $str2 ]]
then
	echo "$str1>$str2"
else
	echo "$str2>$str1"
fi

#
#数值比较
#
echo "/******数值比较********/"
if [ $var1 -gt $var2 ]
then
	echo "var1>var2"
else
	echo "var1<var2"
fi

#
#字符比较
#
echo "/******字符比较**********/"
if [ $str1 \> $str2 ]
then
	echo "$str1>$str2"
else
	echo "$str2>$str1"
fi

echo "/*****************/"
if [ -n $str1 ]
then
	echo "Not empty"
else
	echo "Empty"
fi

if [ -z $zero ]
then
	echo "The var is zero"
else
	echo "The var is full"
fi
