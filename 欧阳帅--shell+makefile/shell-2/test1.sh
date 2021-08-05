#!/bin/bash
#
#模拟命令输入解析
#
:<<!EOF!
echo "/**********模拟命令行输入解析**************/"
while [ -n "$1" ]
do
	case "$1" in
		name)
			shift
			while [ -n "$1" ]
			do
				case "$1" in
					-z) echo "My name is Zhangsan"
						shift;;
					-l) echo "My name is Lisi"
						shift;;
					-w) echo "My name is Wangwu"
						shift;;
			#使用双方括号进入模式匹配，注意：双方括号内应为正则表达式
					*) if [[ $1==-* ]]		
					then
						echo "The parameter is valid"
						shift
					fi
						break;;
				esac
			done;;
		place)
			shift
			while [ -n "$1" ]
			do
				case "$1" in
					-c) echo "I want to China"
						shift;;
					-a) echo "I want to America"
						shift;;
					-e) echo "I want to England"
						shift;;
					*)   if [[ $1==-* ]]
					then
						echo "The parameter is valid"
						shift
					fi
						break;;
				esac
			done;;
		fruit)
			shift
			while [ -n "$1" ]
			do
				case "$1" in
					-a) echo "I like eating apple"
						shift;;
					-b) echo "I like eating banana"
						shift;;
					-p) echo "I like eating pear"
						shift;;
					*) if [[ $1==-* ]]
					then
						echo "The parameter is valid"
						shift
					fi
						break;;
				esac
			done;;
		*) echo "The option is invalid or empty"
			break;;
	esac
done

!EOF!


:<<!EOF!
#
#使用getopt的命令行模拟
#

echo "/******* 使用getopt的命令行模拟 *******/"
set -- $( getopt  ab:cd "$@" )
while [ -n "$1" ]
do 
	case "$1" in
		-a) echo "Find the a option";;
		-b) para=$2
			echo "Find the b option,with parameter $para"
			shift;;
		-c) echo "Find the c option";;
		-d) echo "Find the d option";;
		--) shift
			break;;
		*) echo "The parameter $1 is invalid"
			break;;
	esac
	shift
done
!EOF!

#
#使用getopts的命令行模拟
#

echo "/******* 使用getopts的命令行模拟 **********/"
while getopts :ab:cd opts
do 
	case "$opts" in
		a) echo "Find the a option";;
		b) echo "Find the b option,with parameter $OPTARG";;
		c) echo "Find the c option";;
		d) echo "Find the d option";;
		*) echo "Unknow option";;
	esac
done
echo "/***** \$OPTIND=$OPTIND ******/"
shift $[ $OPTIND - 1 ]
count=1
for para in "$@"
do 
	echo "Parameter $count:$para"
	(( count++ ))
done

