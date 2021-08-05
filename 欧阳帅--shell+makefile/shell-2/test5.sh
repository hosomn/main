#!/bin/bash
#
#/********* array variable to function test ***********/
#
function testit 
{
	local newarray
	newarray=(`echo "$@"`)
	echo "The new array value is:${newarray[*]}"
}
myarray=(1 2 3 4 5 5 5 5)
echo "The original array is ${myarray[*]}"
testit ${myarray[*]}

function total
{
	local sum=0
	local newarray=($( echo "$@" ))
	count=0
	echo "count process:" >>text.txt
	echo "\$#=$#" >>text.txt
	while [ $count -lt $# ]
	do 
		oldsum=$sum
		sum=$[ $sum + ${newarray[$count]} ]
		echo "sum:$oldsum+${newarray[$count]}=$sum">>text.txt
		count=$[ $count + 1 ]
	done
#	echo "Total is $sum"
	echo $[ $sum * 1 ]
}
ttt=$(total ${myarray[*]})
echo "The total is $ttt ......"


#
#/********* using the echo to return a value ***********/
#
function dbl
{
	read -p "Enter a value:" value
	echo $[ $value * 2 ]
}
result=$(dbl)
echo "The new value is $result"

#
#/********** returning an array value **************/
#
retarray()
{
	local i
	local array=($( echo "$@" ))
	for(( i = 0; i < $# ; i++ ))
		{
			array[$i]=$[ ${array[$i]} * 2 ]
		}
		echo ${array[*]}
}
rr=$(retarray ${myarray[*]} )
echo "The new array is:${rr[*]}"

#
#using recursion
#
factorial()
{
	if [ $1 -eq 1 ]
	then 
		echo 1
	else
		local temp=$[ $1-1 ]
		local result=$( factorial $temp )
		echo $[ $1 * $result ]
	fi
}
read -n1 -p "Enter the number between 1 and 9:" value
resultf=$( factorial $value )
echo "The factorial of $value is:$resultf"

