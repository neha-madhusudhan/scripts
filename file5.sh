#!/bin/bash
echo "enter the 1st number"
a=$1 
echo "enter the 2nd number"
b=$2
c=`expr $a + $b`
d=`expr $a \* $b`
e=`expr $a / $b`
echo "addition of two numbers $c "
echo "product of two number $d"
echo "quotient of two number $e"
