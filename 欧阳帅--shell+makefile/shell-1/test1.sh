#!/bin/bash
#test variables
name="ouoyangshaui"
age=22
sex="M"
echo "my name is $name"
echo -n "age=$age  "
echo -n "sex=$sex"
formation=$(ls /bin -la -FR)
touch information.txt
echo $formation>information.txt
wc<information.txt
vi information.txt
