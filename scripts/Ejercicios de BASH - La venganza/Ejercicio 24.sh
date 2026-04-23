# Crea un programa que genere un valor numérico entero aleatorio entre 0 y 100 (incluidos). El usuario deberá intentar adivinar el valor generado en 5 intentos. El programa informará de cuán cerca está el usuario de acertar (es mayor, es menor, etc). Si el usuario no acierta el número, mostrarlo por pantalla, Si lo consiguue, mostrar un mensaje de victoria.
#!/bin/bash

let "aleatorio=$RANDOM % 101"

intentos=0

while [ $intentos -lt 5 ]
do
    read -rep "Introduce un número entre 0 y 100: " entrada
    if [ $entrada -gt $aleatorio ]
    then 
        echo "El número es menor"
    elif [ $entrada -lt $aleatorio ]
    then 
        echo "El número es mayor"
    else
        echo "¡Has acertado!"
        exit 0
    fi
    let "intentos = intentos + 1"
done

echo "¡Has perdido! El número era $aleatorio"

# Corrección del profesor

intentos=0
max_intentos=0
isAcierto=0 # Si acierta el usuario, cambiará a 1

while [ $intentos -lt $max_intentos -a $isAcierto -eq 0 ]
do
        read -rep "Introduce el valor para adivinar " entrada

        if [ $entrada -ne $aleatorio ]
        then    
            if [ $entrada -lt $aleatorio ]
            then
                    echo "El valor buscado es mayor"
            elif [ $entrada -gt $aleatorio ]
            then
                    echo "El valor buscado es menor"
            fi
    else
            isAcierto=1
    fi

    let "intentos = $intentos +1"
done

if [ $isAcierto -eq 1]
then
        echo "Victoria"
else
        echo "Fallaste, el valor era $aleatorio"
fi
