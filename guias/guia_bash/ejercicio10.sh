#!/bin/bash

l1=$1
l2=$2
l3=$3

if [ $l1 -eq $l2 ]; then
	if [ $l2 -eq $l3 ]; then
		echo "Es un triangulo equilátero"
	else
		echo "Es un triángulo isósceles"
	fi
elif [ $l1 -eq $l3 ]; then
	echo "Es un triángulo isósceles"
elif [ $l2 -eq $l3 ]; then
	echo "Es un triángulo isósceles"
else
	echo "Es un triángulo escaleno"
fi

