# Crea un programa que solicite al usuario una ruta. Indicar si es un fichero o un directorio. En caso de ser un fichero, mostrar el contenido. Si es un directorio, mostrar los ficheros que contiene.
#!/bin/bash
read -rep "Introduce una ruta: " ruta

if [ -f "$ruta" ]
then
        echo "Es un fichero"
        cat "$ruta"
elif [ -d "$ruta" ]
then
        echo "Es un directorio"
        ls "$ruta"
else
        echo "Error, ruta incorrecta"
fi