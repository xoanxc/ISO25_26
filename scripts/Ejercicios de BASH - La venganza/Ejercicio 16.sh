#Crear un programa que reciba por parámetro los valores "s" o "r", además de dos valores numéricos enteros. Si recibe el parámetro "s" deberá mostrar la suma de ambos valores. Si recibe el parámetro "r" deberá mostrar la resta del primer valor por el segundo.

valor1=$1
valor2=$2
valor3=$3

if [ "$valor1" == "s" ]; then
    let resultado=valor2+valor3
    echo "La suma de $valor2 y $valor3 es: $resultado"
elif [ "$valor1" == "r" ]; then
    let resultado=valor2-valor3
    echo "La resta de $valor2 por $valor3 es: $resultado"
else
    echo "Parámetro no válido. Por favor, introduce 's' para suma o 'r' para resta."
fi