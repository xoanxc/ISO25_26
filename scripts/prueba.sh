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