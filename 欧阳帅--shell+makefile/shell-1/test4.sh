#!/bin/bash
#
#while
#
echo /*******while********/
count=10
while echo $count
	[ $count -ge 0 ]
do
	echo "The number is $count"
	(( count-- ))
done

#
#until
#
echo /******until*******/
until [ $count -ge 8 ]
do
	echo "The $count number"
	(( count++ ))
done

#
#while+until
#
echo  /********while+until********/
var1=3
while [ $var1 -ge 0 ]
do 
	echo "Out loop:$[ 4-$var1 ]"
	var2=0
	until [ $var2 -gt 3 ]
	do
	#	echo "Inside loop:$[ 1+$var2 ]"
		echo "$var1-$var2=$[ $var1-$var2 ]"
		(( var2++ ))
	done
	(( var1-- ))
done>book.txt	
