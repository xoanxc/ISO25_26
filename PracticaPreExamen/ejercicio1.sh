#Ejercicio 1: El Organizador de Ficheros (Parámetros, Ficheros y Bucles)
#Enunciado:
#Crea un script que reciba el nombre de un directorio por parámetro (ej: ./ejercicio1.sh MisArchivos).
#El programa debe comprobar primero si ha recibido exactamente un parámetro. Si no es así (si recibe 0 o más de 1), mostrará un mensaje de error y terminará.
#Si el parámetro es correcto, comprobará si ese directorio existe. Si no existe, deberá crearlo.
#A continuación, el programa entrará en un bucle que pedirá repetidamente al usuario un nombre de fichero (usando read).
#El programa creará ese fichero dentro del directorio especificado.
#El bucle se detendrá cuando el usuario introduzca la palabra "fin".

#!/bin/bash
control="hola"
directorio=$1

while [[ $control != "fin" ]]
do
    # 1. Comprobamos SOLO que haya 1 parámetro
    if [[ $# == 1 ]]
    then
        # 2. Si el directorio NO existe, lo creamos
        if [[ ! -d $directorio ]]
        then
            mkdir "$directorio"
        fi
        
        # 3. Pedimos ficheros en bucle
        while [[ $control != "fin" ]]
        do
            echo "Introduce un fichero para crear (escribe 'fin' para salir)"
            read -rep "> " control
            echo ""
            
            # Evitamos que cree un archivo literal que se llame "fin"
            if [[ $control != "fin" ]]
            then
                touch "$directorio/$control"
            fi
        done
        
    else
        read -rep "Parametros incorrectos, presiona enter para finalizar"
        control="fin"
    fi
done
