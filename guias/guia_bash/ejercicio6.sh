#!/bin/bash

echo "Dime un número: "
read n

if [ $n -gt 0 ]; then
	echo "$n es mayor que 0"
elif [ $n -lt 0 ]; then
	echo "$n es menor que 0"
elif [ $n -eq 0 ]; then
	echo "$n es igual que 0"
fi

