#/bin/bash

echo "Dame un número par: "
read n

until [ $(($n % 2)) -eq 0 ]; do
	echo "Dame un número par: "
	read n
done

echo "Elegistes el número $n"
