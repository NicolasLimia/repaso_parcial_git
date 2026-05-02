#!/bin/bash

echo "Dame un número: "
read n1

echo "Dame otro número: "
read n2

sumar(){
	echo "$n1 + $n2 = $(($n1 + $n2))"
}

restar(){
	echo "$n1 - $n2 = $(($n1 - $n2))"
}

multiplicar(){
	echo "$n1 x $n2 = $(($n1 * $n2))"
}

dividir(){
	echo "$n1 / $n2 = $(($n1 / $n2))"
}

sumar
restar
multiplicar
dividir
