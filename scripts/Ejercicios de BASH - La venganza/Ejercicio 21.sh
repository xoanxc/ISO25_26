# Crea un programa que solicite valores al usuario y muestre por pantalla el valor sumado al valor anterior introducido. El programa se detendrá al recibir un 0.

#!/bin/bash

read -p "Introduce un número: " numero

while [ $numero -ne 0 ]
do
    suma=$((suma + numero))
    echo "La suma actual es: $suma"
    read -p "Introduce otro número: " numero
done

echo "Programa terminado. La suma total es: $suma"