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
    # "read -r usuario password" almacena la primera palabra en la variable "usuario" y la segunda en "password".
    while read -r usuario password
    do
        # Creamos el usuario (-m crea el directorio home)
        useradd -m "$usuario"
            
        # Asignamos la contraseña de forma automática mediante la tubería
        echo "$usuario:$password" | chpasswd
            
        echo "Usuario $usuario creado correctamente."
    done < "$ficheroUsuarios" # Redirigimos la entrada del bucle al fichero.
fi

# No compruebo si el usuario es root o no, ya que no se solicitó en el enunciado y ya se hace en la segunda parte de la práctica 4.