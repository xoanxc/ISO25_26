# Crea un programa que permita calcular los números primos desde el 1 hasta el número indicado por el usuario. Los números primos son aquellos que son solo divisibles por ellos mismos y la unidad (el 19, por ejemplo), por lo que el resto con cualquier otro número ha de ser disitnto de 0.
#!/bin/bash

read -rep "Introduce hasta que número calcular: " valor

contador_1=1 # Contador para determinar fin del bucle
contador_2=2 # Contador para el calculo de los primos
isPrimo=0 # 0 Es primo, 1 no lo es
resto=0 # Variable para el calculo del valor primo

while [ $contador_1 -lt $valor ]
do
        # Reinicio de contadores
        contador_2=2
        isPrimo=0

        if [ $contador_1 -eq 1 -o $contador_1 -eq 2 ]
        then
                echo "$contador_1 es primo"
        else
                while [ $contador_2 -lt $contador_1  -a $isPrimo -eq 0 ]
                do
                        let "resto = $contador_1 % $contador_2"
                        if [ $resto -eq 0 ]
                        then    
                                isPrimo=1
                        fi
                        let "contador_2 = $contador_2 + 1"
                done
                if [ $isPrimo -eq 0 ]
                then
                        echo "$contador_1 es primo"
                fi
        fi
        let "contador_1 = contador_1 + 1"
done