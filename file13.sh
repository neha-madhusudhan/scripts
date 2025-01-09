#!/bin/bash/

echo "enter the file name"
read file
res=0
while read line
do
	num=$(echo -n "$line" | wc -c)
	res=`expr $result + 1`
	echo "the number of characters present in the line number $result is $num "
done < $file
