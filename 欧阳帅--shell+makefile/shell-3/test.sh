#!/bin/bash


function diskspace
{
	clear
	echo "This is where the diskspace commands will go"
}


function menu
{
	clear
	echo
	echo -e "\t\t\tSys Admin Menu\n"
	echo -e "\t1.Display diskspace"
	echo -e "\t2.Display logged on users"
	echo -e "\t3.Display memory usage"
	echo -e "\t0.Exit program\n\n"
	echo -en "\t\tEnter option:"
	read -n 1 option
	echo $option >1
}



diskspace()
{
	clear
	df -k
}

whoseon()
{
	clear
	who
}

memusage()
{
	clear
	cat /proc/meminfo
}
