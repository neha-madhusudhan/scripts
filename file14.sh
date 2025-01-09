#!/bin/bash

# Check if the number is odd or even
echo "Enter a number: "
read num

if (( num % 2 == 0 )); then
    echo "The given number is even $num"
else
    echo "The given number is odd $num"
fi

