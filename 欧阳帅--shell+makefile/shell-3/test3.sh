#!/bin/bash

#. ./test.sh

:<<EOF
dialog --title Testing --msgbox "This is a test" 10 20
clear
dialog --title "Please answer" --yesno "Is this thing on?" 10 20
clear
dialog --inputbox "Please inputs:" 10 20 2>infor.txt
cat infor.txt
echo
dialog --textbox /etc/passwd 40 40
clear
dialog --menu "System Menu" 20 30 8 1 "Display disk space" 2 "Display users" 3 "Display memory usage" 4 "Exit" 2>infor.txt
clear
read option <infor.txt
echo "option=$option"
exec 1>1.txt
case $option in
	1)
		diskspace;;
	2)
		whoseon;;
	3)
		memusage;;
	4)
		break;;
esac


dialog --title "Select a file" --fselect $/HOME/ouyangshuai 10 50 2>infor.txt
EOF
temp1=$(mktemp -t test1.XXXXXX)
temp2=$(mktemp -t test2.XXXXXX)

diskspace()
{
	df -k > $temp1
	dialog --textbox $temp1 10 60
}
whoseon()
{
	who > $temp1
	dialog --textbox $temp1 20 40
}
memusage()
{
	cat /proc/meminfo > $temp1
	dialog --textbox $temp1 20 60
}

while [ 1 ]
do
	dialog --menu "System Menu" 20 30 8 1 "Display disk space" 2 "Display users" 3 "Display memory usage" 4 "Exit" 2>$temp2
	if [ $? -eq 1 ]
	then 
		break
	fi
	option=$( cat $temp2 )
	case $option in
		1)
			diskspace;;
		2)
			whoseon;;
		3)
			memusage;;
		4)
			break;;
		*)
			dialog --msgbox "Sorry,invalid selection" 10 30
	esac
done
rm -f $temp1 >/dev/null
rm -f $temp2 >/dev/null

