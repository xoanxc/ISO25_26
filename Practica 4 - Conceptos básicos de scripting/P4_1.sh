#!/bin/bash


# Comprobar que se ha pasado un parámetro
if [ $# -ne 1 ]
then
    echo "Uso: $0 <fichero_usuarios>"
    exit 1
fi

ficheroUsuarios=$1

# Comprobar que el fichero existe
if [ ! -f "$ficheroUsuarios" ]
then
    echo "El fichero $ficheroUsuarios no existe."
    exit 1
fi

while IFS=: read -r usuario contraseña
do
    if id "$usuario" &>/dev/null; then
        echo "El usuario $usuario ya existe."
    else
        useradd -m "$usuario"
        echo "$usuario:$contraseña" | chpasswd
        echo "Usuario $usuario creado con éxito."
    fi
done < "$ficheroUsuarios"
