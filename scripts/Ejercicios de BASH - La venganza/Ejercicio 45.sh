#45 - Mastermind: Se requiere crear un programa para jugar a Mastermind. Este juego es muy sencillo: se generará una cadena de 4 valores numéricos enteros entre 0 y 9, pudiendo estar repetidos los valores. El jugador deberá intentar adivinar la cadena en menos de 5 intentos. Para ello:
#- El orden importa. Es decir, la cadena 1234 no es la misma que 4321
#- Como pista, el programa indicará:
#  - Con una 'X' o similar, si el valor está en la cadena pero no en la posición correcta
#  - Con una 'O' o similar, si el valor está en la cadena y en la posición correcta
#  - Con un '-' o similar, si el valor no está en la cadena.
# - Si el jugador acierta la cadena en el orden correcto, se contará como una victoria
# - Si el jugador se queda sin intentos, se indicará la derrota y se mostrará la cadena.
# - Debe mantener un registro de partidas

#!/bin/bash

let "adivinar1 = $RANDOM % 10"
let "adivinar2 = $RANDOM % 10"
let "adivinar3 = $RANDOM % 10"
let "adivinar4 = $RANDOM % 10"

contador=0
max_rondas=5

pista1=""
pista2=""
pista3=""
pista4=""

isVictoria=0

while [[ $contador < $max_rondas -a $isVictoria == 0 ]]
do
	echo "Introduce el primer numero"
	read -rep "> " usr1
	echo "Introduce el segundo numero"
	read -rep "> " usr2
	echo "Introduce el tercer numero"
	read -rep "> " usr3
	echo "Introduce el cuarto numero"
	read -rep "> " usr4

	if [[ $valor1 == $adivinar1 ]]
	then
		pista1="O"
	elif [[ $valor1 == $adivina2 || $valor1 == $adivina3 || $valor1 == $adivinar4 ]]
	then 
		pista1="X"
	else
		pista1="-"
	fi

	if [[ $valor2 == $adivinar2 ]]
	then
		pista2="O"
	elif [[ $valor2 == $adivina1 || $valor2 == $adivina3 || $valor2 == $adivinar4 ]]
	then 
		pista2="X"
	else
		pista2="-"
	fi

	if [[ $valor3 == $adivinar3 ]]
	then
		pista2="O"
	elif [[ $valor3 == $adivina1 || $valor3 == $adivina2 || $valor3 == $adivinar4 ]]
	then 
		pista3="X"
	else
		pista3="-"
	fi

	if [[ $valor4 == $adivinar4 ]]
	then
		pista2="O"
	elif [[ $valor4 == $adivina1 || $valor4 == $adivina2 || $valor4 == $adivinar3 ]]
	then 
		pista4="X"
	else
		pista4="-"
	fi

	echo "$pista1 $pista2 $pista3 $pista4"

	if [[ $pista1 == "O" && $pista2 == "O" && $pista3 == "O" && $pista4 == "O" ]]
	then
		isVictoria=1
	fi

	let "contador=$contador + 1"

done

if [[ $isVictoria == 1 ]]
then
	echo "Victoria"
	echo "Victoria - Intentos: $contador  "

	

done