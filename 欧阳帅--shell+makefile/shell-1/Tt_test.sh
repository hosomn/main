#!/bin/bash
str1="eest"
str2="Eest"
str3="ba"
str4="Ba"
if [[ $str1 > $str2 ]]
then
	echo "$str1>$str2"
else
	echo "$str2>$str1"
fi

if [[ $str3 > $Str4 ]]
then 
	echo "$str3>$str4"
else
	echo "$str4>$str3"
fi

