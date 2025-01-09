#!/bin/bash

echo "$0"
echo "total number of arguments passed to the script $#"
echo "total number of arguments passed to the script in string format $*"
echo "total number of arguments passed to the script in array format $@"


a=("car" "benz" "tata")
echo "${a[0]}"
echo "${a[1]}"
echo "${a[2]}"

echo "${a[*]}"
echo "${a[@]}"

