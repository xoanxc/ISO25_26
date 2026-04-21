#Crea un programa que, dado un valor numérico entero, indique y muestre por pantalla si es par o no. Los números pares son aquellos que al dividirlos entre 2, el resto es 0.

read -rep "Introduce un valor: " valor

let "resultado=$valor % 2"

if [ $resultado -eq 0 ]; then
    echo "El número $valor es par."
else
    echo "El número $valor es impar."
fi
