#42 -  Crear un programa que permita simular un juego de carreras lentas. Se pedirá apostar por alguno de los participantes. La carrera consiste en llegar al valor 10 o susperarlo. Los participantes se moverán, cada uno, al azar entre -3 y 4 casillas. Cada turno se verá la posición, que no puede ser menor que 0.

#!/bin/bash
echo "Bienvenido a la carrera lenta!"
echo "Apuesta por el patito verde, amarillo o azul (verde/amarillo/azul):"
read -rep "" apuesta

posicionVerde=0
posicionAmarillo=0
posicionAzul=0

while [[ $posicionVerde < 10 && $posicionAmarillo < 10 && $posicionAzul < 10 ]]
do
    # Generar un movimiento aleatorio para cada patito
    let movimientoVerde=$RANDOM % 8 - 3
    let movimientoAmarillo=$RANDOM % 8 - 3
    let movimientoAzul=$RANDOM % 8 - 3
    let posicionVerde=$posicionVerde + $movimientoVerde
    let posicionAmarillo=$posicionAmarillo + $movimientoAmarillo
    let posicionAzul=$posicionAzul + $movimientoAzul
    if [[ $posicionVerde < 0 ]]
    then
        posicionVerde=0
    fi
    if [[ $posicionAmarillo < 0 ]]
    then
        posicionAmarillo=0
    fi
    if [[ $posicionAzul < 0 ]]
    then
        posicionAzul=0
    fi
    echo "Posiciones: Verde: $posicionVerde, Amarillo: $posicionAmarillo, Azul: $posicionAzul"
done

# Comprobación patito ganador
if [[ $posicionVerde >= 10 ]]
then
    ganador="verde"
elif [[ $posicionAmarillo >= 10 ]]
then
    ganador="amarillo"
else
    ganador="azul"
fi

# Determinar si el jugador gano o perdio su pisito en la playa
if [[ $apuesta == $ganador ]]
then
    echo "¡Felicidades! Has ganado, el patito $ganador fue el ganador."
else
    echo "Lo siento, has perdido. El patito $ganador fue el ganador. Despidete del pisito en la playa y del Seat Panda aparcado en la entrada."
fi