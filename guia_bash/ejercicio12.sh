#!/bin/bash

echo "Dame un número natural"
read n
n=$(($n + 1))

for ((i=1; i<$n; i++)); do
	echo "$i"
done

