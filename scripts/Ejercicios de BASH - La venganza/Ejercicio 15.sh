#Crea un programa que solicite al usuario dos cadenas de texto. Mostrar por pantalla si son la misma cadena o no.
#!/bin/bash
read -p "Ingrese la primera cadena de texto: " cadena1
read -p "Ingrese la segunda cadena de texto: " cadena2

if [ "$cadena1" == "$cadena2" ]
then
    echo "Las cadenas son iguales."
else
    echo "Las cadenas son diferentes."
fi