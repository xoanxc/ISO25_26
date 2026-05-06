#!/bin/bash

# Variable de control.
juegoTerminado=0

while [[ $juegoTerminado == 0 ]]
do
    echo "Selecciona una de las siguientes opciones: piedra/papel/tijeras"
    read -rp "> " opcion

    # Validamos la entrada del usuario
    if [[ "$opcion" != "piedra" && "$opcion" != "papel" && "$opcion" != "tijeras" ]]
    then
        echo "Opción no válida. Por favor, elige piedra/papel/tijeras."
    else
        cpu=$((RANDOM % 3))
        
        if [[ $cpu == 0 ]]
        then
            maquina="piedra"
        elif [[ $cpu == 1 ]]
        then
            maquina="papel"
        else
            maquina="tijeras"
        fi

        echo "La máquina ha elegido: $maquina"

        # Determinar el ganador
        if [[ "$opcion" == "$maquina" ]]
        then
            echo "¡Es un empate! Intenta de nuevo."
        elif [[ "$opcion" == "piedra" && "$maquina" == "tijeras" ]] || [[ "$opcion" == "papel" && "$maquina" == "piedra" ]] || [[ "$opcion" == "tijeras" && "$maquina" == "papel" ]]
        then
            echo "¡Felicidades, ganaste!"
            # Terminamos el juego
            juegoTerminado=1
        else
            echo "¡Oh no, la máquina gana!"
            # Terminamos el juego
            juegoTerminado=1 
        fi
    fi
done





