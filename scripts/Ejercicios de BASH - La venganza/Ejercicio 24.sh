# Crea un programa que genere un valor numérico entero aleatorio entre 0 y 100 (incluidos). El usuario deberá intentar adivinar el valor generado en 5 intentos. El programa informará de cuán cerca está el usuario de acertar (es mayor, es menor, etc). Si el usuario no acierta el número, mostrarlo por pantalla, Si lo consiguue, mostrar un mensaje de victoria.

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
