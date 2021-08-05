#!/bin/bash
str1="test"
str2="Test"
if [[ $str1 > $str2 ]] 
then
	echo "$str1>$str2"
else
	echo "$str2>$str1"
fi
