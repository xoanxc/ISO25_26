#Crear un programa que solicite al usuario una cadena de texto. Si el usuario no escribe nada, mostrar por pantalla un error.
#!/bin/bash
read -rep "Ingrese una cadena de texto: " cadena

if [ -z "$cadena" ]; then
    echo "Error: El usuario es analfabeto."
else
    echo "La cadena de texto es: $cadena"
fi