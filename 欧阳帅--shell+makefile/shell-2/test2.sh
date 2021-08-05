#!/bin/bash
#
#基本读取--read
#
:<<!EOF!
echo "/***** The simple using method of reading *****/"

echo -n "Enter your name:"
read name
echo "Hello $name,welcome to my world"

#
#read:add -p options
#
read -p "Please enter your age:" age
days=$[ $age * 365 ]
echo "That makes you over $days days old!"

#
#read:add environment variable  REPLY
read -p "Enter your hobby:"
echo "My hobby is $REPLY"

#
#read: -t out time
#
if read -t 5 -p "Please enter your name:" name
then
	echo "Hello $name,welcome"
else
	echo
	echo "Sorry,you're over time"
fi

#
#read: -n count numbers
#
read -n1 -p "Please input your sex[M/F]:" sex
case "$sex" in
	M|m)
		echo
		echo "Hi,boy";;
	F|f)
		echo
		echo "Hi,girl";;
	*)
		echo
		echo "your input invalid"
esac
!EOF!

#
#read:hiding input data from the monitor
#
read -p  "Please input your userID:" user
read -s -p "Please input your passwd:" passwd
if [ "$user" = "Ouyang shuai" ]
then
	if [ "$passwd" = "841345442" ]
	then
		echo
		echo "Login success"
	else
		echo
		echo "Passwd error"
	fi
else
	echo
	echo "User error"
fi
