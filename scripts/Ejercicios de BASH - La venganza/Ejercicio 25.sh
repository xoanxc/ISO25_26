# Crea un programa que permita calcular tantos valores de la secuencia de Fibonacci como el usuairo indique. La secuencia de Fibonacci es aquella cuyo valor siguiente es la suma del valor actual y el anterior, siendo casos especiales el 0 y el 1 (0 1 1 2 3 5 8 13...)
#!/bin/bash

read -rep "Introduce el número de valores de la secuencia de Fibonacci que quieres calcular: " nFibonacci

anterior=0
actual=1
contador=0

while [ $contador -lt $nFibonacci ]
do
    echo -n "$anterior " # Imprime el valor actual sin salto de línea
    let "siguiente = anterior + actual" # Calcula el siguiente valor de la secuencia
    anterior=$actual # Actualiza el valor actual al siguiente
    actual=$siguiente # Actualiza el valor anterior al valor actual
    let "contador = contador + 1" # Incrementa el contador
done
echo # Evitar que ocurra: 0 1 1 2 3 5 8 13 root@debian:~#