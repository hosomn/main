#!/bin/bash
a=$(expr 1 + 6)
echo "1+6=$a"
echo $a
b=$(expr 3 \* 6)
echo "3*6=$b"
c=$[1+2]
echo 1+2=$c
echo /\*********************/
var=$(echo "scale=6;3.14 * 2.6" | bc)
echo The answer is $var
echo /\********************/
var1=10.46
var2=43.67
var3=33.2
var4=71

var5=$(bc<<end
scale=6
a1=$var1*$var2
b1=$var3*$var4
a1+b1
end
)
echo The final result is $var5
