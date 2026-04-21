# Crea un programa que muestre por pantalla los valores numericos enteros entre dos valores solicitados al usuairo, asegurandose de que el primer valor es menor que el segundo. Si mo lo es, informar del error.

read -rep "Introduce el primer valor: " valor1
read -rep "Introduce el segundo valor: " valor2

if [ $valor1 -ge $valor2 ]; then
    echo "Error: El primer valor debe ser menor que el segundo."
else
    echo "Los valores enteros entre $valor1 y $valor2 son:"
    for ((i=valor1+1; i<valor2; i++)); do
        echo $i
    done
fi
