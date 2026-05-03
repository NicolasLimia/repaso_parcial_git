#!/bin/bash

grep -oE "^.*[A-z].*," contraseñas.csv | grep -E ".*[0-9].*" | sed "s/,//"
