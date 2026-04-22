# Crea un programa que, dado un valor del usuario, calcule la tabla de multiplicar de dicho valor del 1 al 9 y los muestre por pantalla.

read -rep "Introduce un valor numérico entero entre el 1 y el 9: " valor

for i in {1..9}
do
    let "resultado=$valor * $i"
    echo "$valor x $i = $resultado"
done

# Otra solución:

contador=1
while [ $contador -lt 10 ]
do
    let "resultado=$valor * $contador"
    echo "$valor x $contador = $resultado"
    let "contador++"
done
