#!/bin/bash
dato=3
nombre="iago"

# Esto es un comentario

: '
Hola mundo
'

echo $nombre

nombre="daniel"

echo $nombre

read -rep "Introduce tu nombre: " nombre

echo "Hola $nombre"


# Variables de sistema

echo $HOME

echo $PWD

echo $USER

echo $UID






echo $#

echo $*

ls ñ
echo $?

#1 - Crea un programa que muestre por pantalla el mensaje "Hola mundo!"


echo "Hola mundo!"

#2 - Crea un programa que contenga una variable llamada "mensaje" con el contenido "Hola mundo!"

mensaje="Hola mundo!"

#3 - Crea un programa que contenga una variable llamada "mensaje" con el contenido "Hola mundo!". Muestra por pantalla el contenido de la variable

mensaje="Hola mundo!"
echo $mensaje

#4 - Crea un programa que contenga dos variables llamadas "mensaje1" y "mensaje2" con el contenido "Hola" y "mundo" respectivamente. Muestra por pantalla el contenido de cada variable.

mensaje1=Hola
mensaje2=mundo

echo $mensaje1 
echo $mensaje2

#5 - Crea un programa que contenga dos variables llamadas "mensaje1" y "mensaje2" con el contenido "Hola" y "mundo" respectivamente. Mutra por pantalla el contenido del mensaje concatenado. El resultado debería ser el mensaje "Hola mundo!" por pantalla.

mensaje1=Hola
mensaje2=mundo

mensaje_total="$mensaje1 $mensaje2"
echo "$mensaje1 $mensaje2!"

let "resultado=2+2"

echo $resultado

# 6 - Crea un programa que contenga dos variables llamadas numero1 y numero2 con valores numericos enteros. Calcula las operaciones aritmeticas basicas y muestra el resultado por pantalla de cada una.

numero1=7
numero2=9

let suma=numero1+numero2

echo $suma

# 7 - Crea un programa que solicite al usuario un valor numérico entero entre el 1 y el 9. Muestra la tabla de multiplicar (del 1 al 9) de dicho valor.

read -rep "Introduce un numero entre el 1 y el 9: " numero
echo "Tabla de multiplicar del $numero:"
for i in {1..9}; do
    let resultado=numero*i
    echo "$numero x $i = $resultado"
done

#8 - Crea un programa que reciba por parámetros dos valores enteros. El primero la base y el segundo la altura de un reptangulo. Muestra por pantalla el perímetro y al area del mismo.

base=$1
altura=$2

area=$((base * altura))
perimetro=$((2 * (base + altura)))

#Otra forma:
#area=($base * $altura)
#perimetro=(2 * ($base + $altura))

echo "Area del rectangulo: $area"
echo "Perimetro del rectangulo: $perimetro"


read -rep "Introduce un número: " numero

if [ $numero -gt 0 ]
then
        echo "El valor es positivo"
elif [ $numero -eq 0 ]
then
        echo "El valor es cero"      
else
        echo "El valor es negativo"
fi

case $numero in
        1)
                echo "El valor es 1"    
                ;;
        2)
                echo "El valor es 2"
                ;;
        3)
                echo "El valor es 3"
                ;;
        *)
                echo "Valor no valido"
                ;;
esac


# Explicación bucle UNTIL: Se ejecuta el bloque de código hasta que se cumpla la condición. Es decir, se ejecuta al menos una vez.
contador=0
echo " ----- WHILE ----- "
while [ $contador -lt 10 ]
do
        echo $contador
        let contador=contador+1
done

contador=0
echo " ----- UNTIL ----- "
until [ $contador -ge 10 ]
do
        echo $contador
        let contador=contador+1
done

# Explicación bucle FOR: Se ejecuta un bloque de código un número determinado de veces. Se puede iterar sobre una secuencia de números, sobre los elementos de una lista o sobre los archivos de un directorio.
for i in {1..10}
do
        echo $i
done