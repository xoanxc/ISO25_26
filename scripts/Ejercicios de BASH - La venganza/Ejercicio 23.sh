# Crea un programa que solicite valores al usuario hasta que introduzca un 0. Muestra por pantalle l numero total de valores introducidos (menos el ultimo, el 0), la media de los valroes, el valor maximmo introducido y el valor minimo introducido en la secuencia.
#!/bin/bash

suma=0
entrada=-1
contador=0
max=-9999999
min=9999999

while [ $entrada -ne 0 ]
do
    read -rep "Introduce un número: " entrada

    if [ $entrada -gt $max ]
    then 
        max=$entrada
    fi

    if [ $entrada -lt $min ]
    then 
        min=$entrada
    fi
    if [ $entrada -ne 0 ]
    then
        let "contador = $contador + 1"
        let "suma = $suma + $entrada"
    fi
done

let "media = $suma / $contador"
echo "La media es $media"
echo "El número de valores introducidos fueron $contador"
echo "El número máximo introdicido es $max"
echo "El número máximo introdicido es $min"