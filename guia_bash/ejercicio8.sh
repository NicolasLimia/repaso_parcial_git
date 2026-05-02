#!/bin/bash

n=$1

if [ $(($n % 2)) -eq 0 ]; then
	echo "$n es par"
else
	echo "$n es impar"
fi
