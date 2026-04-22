# Crea un programa que solicite valores al usuario hasta que introduzca un 0. Muestra por pantalla la media de todos los valores introducidos.
#!/bin/bash
suma=0
entrada=-1
contador=0

while [ $entrada -ne 0 ]
do
    read -p "Introduce un número: " entrada
    if [ $entrada -ne 0 ]
    then
        let "contador=$contador+1"
        let "suma=$suma+$entrada"
    fi
done

let "media=$suma/$contador"

echo "La media es $media"