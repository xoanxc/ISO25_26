#!/bin/bash

# Comprobar que el usuario que lanza el script tiene permisos de superusuario
if [ $UID -ne 0 ]
then 
    echo "Este script requiere permisos de superusuario :("
    exit 1
fi

# Comprobar si no se ha pasado ningún parámetro
if [ $# -eq 0 ]; then
    echo "Error: Falta introducir parámetros."
    echo "Uso: $0 [-p permisos archivo] [-ip interfaz estado] [-o propietario archivo] [-ls dir] [-a dir] [-l dir]"
    exit 1
fi

# Comprobación de parametros
case $1 in
        -p) # para modificar los permisos de un archivo. 
            if [ $# -eq 3 ] # Comprobamos que hay 3 parámetros exactos (script, permisos, archivo)
            then
                chmod "$2" "$3"
                echo "Permisos de $3 cambiados a $2."
            else
                echo "Error de parámetros."
                echo "Uso correcto: $0 -p <permisos> <archivo>"
                exit 1
            fi
            ;;
        -ip) # para modificar el estado de una interfaz de red (up o down).  
            
            ;;
        -o) # para modificar el propietario de un archivo.  
            
            ;;
        -l) # listará un directorio 

            ;;
        *)
            # Si introducen algo que no existe en el case
            echo "Opción $1 no reconocida."
            echo "Opciones disponibles:"
            echo "  -p  Modificar permisos"
            echo "  -ip Modificar estado de red"
            echo "  -o  Modificar propietario"
            echo "  -l Listar directorio"
            echo "  -la  Listar directorio y ocultos"
            echo "  -li  Listar directorio con detalles"
            exit 1
            ;;
esac