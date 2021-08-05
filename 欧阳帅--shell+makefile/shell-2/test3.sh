#!/bin/bash
exec 3> text.txt
echo "This is a test file of data">&3
exec 3>&-
exec 3>text.txt
echo "This'll be bad">&3

exec 4>text1.txt
exec 5>text2.txt
lsof -a -p $$ -d 0,1,2,3,4,5

cat text.txt
cat text1.txt
cat text2.txt

cat /dev/null >text.txt
cat /dev/null >text1.txt
cat /dev/null >text2.txt
