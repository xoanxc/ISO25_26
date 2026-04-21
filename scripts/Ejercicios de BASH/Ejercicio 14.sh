#Crea un programa que, dado un par de valores numéricos enteros, indicar si es mayor el producto del primero por 2, el cuadrado del segundo o si son iguales.

read -rep "Introduce el primer valor: " valor1
read -rep "Introduce el segundo valor: " valor2

let "producto=$valor1 * 2"
let "cuadrado=$valor2 ** 2" # El operador ** se utiliza para calcular la potencia.

if [ $producto -gt $cuadrado ]; then
    echo "El producto del primer valor por 2 es mayor que el cuadrado del segundo valor."
elif [ $producto -lt $cuadrado ]; then
    echo "El cuadrado del segundo valor es mayor que el producto del primer valor por 2."
else
    echo "El producto del primer valor por 2 y el cuadrado del segundo valor son iguales."
fi