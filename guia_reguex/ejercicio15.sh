#!/bin/bash

grep -oE ",(.).*\1$" contraseñas.csv | sed "s/,//"
