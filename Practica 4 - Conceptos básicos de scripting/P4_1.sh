#!/bin/bash

ficheroUsuarios="$1" # Asignamos la ruta aportada por el usuario a una variable para facilitar su uso.

# Comprobar que se ha pasado un parámetro.
if [ $# -ne 1 ]
then
    echo "No se ha introducido una ruta al fichero de usuarios."

# Comprobar que el fichero proporcionado existe.
elif [ ! -f "$ficheroUsuarios" ]
then
    echo "El fichero $ficheroUsuarios no existe."

# Comprobar que el fichero proporcionado no está vacío.
elif [ ! -s "$ficheroUsuarios" ]
then
    echo "El fichero $ficheroUsuarios está vacío."

# Si el fichero es correcto, se procede a leerlo línea por línea y crear los usuarios.
else 
    # "read -r usuario password" almacena la primera palabra en la variable "usuario" y la segunda en "password". El bucle se repetirá hasta que se hayan leído todas las líneas del fichero.
    while read -r usuario password
    do
        # Creamos el usuario (-m crea el directorio home)
        useradd -m "$usuario"
            
        # Asignamos la contraseña de forma automática
        # chpasswd recibe el formato "usuario:contraseña" mediante la tuberia (si, la llamdo así porque así la llamaba Don Enrique en sus clases de SOM)
        echo "$usuario:$password" | chpasswd
            
        echo "Usuario '$usuario' creado correctamente."
    done < "$ficheroUsuarios" # Redirigimos la entrada del bucle al fichero de usuarios para que lo lea línea por línea.
done
fi

# No compruebo si el usuario es root o no, ya que no se solicitó en el enunciado.