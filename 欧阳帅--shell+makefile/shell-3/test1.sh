#!/bin/bash
. ./test.sh
while [ 2 ]
do
	menu
	op=$( cat 1 )
	case $op in
		0)
			break;;
		1)
			diskspace;;
		2)
			whoseon;;
		3)
			memusage;;
		*)
			clear
			echo "Sorry,wrong selection";;
	esac
	echo -en "\n\n\t\t\tHit any key to continue"
	read -n 1 line
done
clear
