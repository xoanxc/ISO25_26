#!/bin/bash

# Añadida a ultima hora para reducir la repetición de código.
function ayudaParametros {
    # Ayuda para el usuario en caso de que introduzca un parámetro no reconocido.
    echo "Opciones disponibles:"
    echo "  -p  Modificar permisos"
    echo "  -ip Modificar estado de red"
    echo "  -o  Modificar propietario"
    echo "  -l Listar directorio"
    echo "  -la  Listar directorio y ocultos"
    echo "  -ll  Listar directorio con detalles"
    exit 1 # Salimos con un código de error.
}


# Comprobar que el usuario que lanza el script tiene permisos de superusuario
if [ $UID -ne 0 ]
then 
    echo "Este script requiere permisos de superusuario :("
    exit 1
fi

# Comprobar si no se ha pasado ningún parámetro
if [ $# -eq 0 ]; then
    echo "Error: Falta introducir parámetros."
    echo ""
    ayudaParametros
fi

# Comprobación de parametros
case $1 in
        -p) # para modificar los permisos de un archivo. 
            if [ $# -eq 3 ] # Comprobamos que hay 3 parámetros exactos (parametro, permisos, archivo)
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
            if [ $# -eq 3 ] # Comprobamos que hay 3 parámetros exactos (parametro, interfaz, estado)
            then
                if [ "$3" == "up" ]
                then
                    ip link set "$2" up
                    echo "Interfaz $2 activada."
                elif [ "$3" == "down" ]
                then
                    ip link set "$2" down
                    echo "Interfaz $2 desactivada."
                else
                    echo "Error: El estado debe ser up/down."
                    echo "Uso correcto: $0 -ip <interfaz> <up/down>"
                    exit 1
                fi
            else
                # Aquí se podria haber utilizado una función, pero no lo vi tan necesario.
                echo "Error de parámetros."
                echo "Uso correcto: $0 -ip <interfaz> <up/down>"
                exit 1
            fi
            ;;
        -o) # para modificar el propietario de un archivo.  
            if [ $# -eq 3 ] # Comprobamos que hay 3 parámetros exactos (parametro, propietario, archivo)
            then
                chown "$2" "$3"
                echo "Propietario de $3 cambiado a $2."
            else
                echo "Error de parámetros."
                echo "Uso correcto: $0 -o <propietario> <archivo>"
                exit 1
            fi
            ;;
        -l) # listará un directorio 
            if [ $# -eq 2 ] # Comprobamos que hay 2 parámetros exactos (parametro, directorio)
            then
                ls "$2"
            else
                echo "Error de parámetros."
                echo "Uso correcto: $0 -l <directorio>"
                exit 1
            fi
            ;;

        ##################################
        # Podria haber utilizado un if o case dentro del -l, 
        #pero decidí hacerlo de está forma por la costumbre en linux 
        # Ej: ls -l, ls -la, etc.
        ##################################

        -la) # listará un directorio y los archivos ocultos.
            if [ $# -eq 2 ] # Comprobamos que hay 2 parámetros exactos (parametro, directorio)
            then
                ls -a "$2"
            else
                echo "Error de parámetros."
                echo "Uso correcto: $0 -la <directorio>"
                exit 1
            fi
            ;;


        -ll) # listará un directorio con detalles.
            if [ $# -eq 2 ] # Comprobamos que hay 2 parámetros exactos (parametro, directorio)
            then
                ls -l "$2"
            else
                echo "Error de parámetros."
                echo "Uso correcto: $0 -ll <directorio>"
                exit 1
            fi
            ;;
        *)
            # Si introducen algo que no existe en el case mostramos las opciones
            ayudaParametros
            ;;
esac