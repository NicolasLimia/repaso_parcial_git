#!/bin/bash

grep -oE ",.{14}$" contraseñas.csv | sed "s/,//"
