#!/bin/bash

grep -oE ",.*[a-z].*$" contraseñas.csv | grep -E ".*[A-Z].*" | grep -E ".*[0-9].*" | grep -E ".*[@$!%*?&#].*" | sed "s/,//"
