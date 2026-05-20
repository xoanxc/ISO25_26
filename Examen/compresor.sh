#!/bin/bash

# Comprobamos que el usuario introduzca los 3 parámetros necesarios, de lo contrario, le mostramos como utilizar el script
if [[ $# != 3 ]]
then
    echo "Error: Número de parámetros incorrecto."
    echo "Compresión: $0 -c <fichero_comprimido.tar> <fichero_o_directorio>"
    echo "Descompresión: $0 -e <fichero_a_descomprimir.tar> <ruta_destino>"
    exit 1 # Salimos con error
fi

# Asignamos los parámetros a variables con nombres muy intentificativos (seguro que no hay duda)
opcion=$1
ficheroTar=$2
objetivo=$3

# Caso de compresión "-c"
if [[ $opcion == "-c" ]]
then
    # Comprobamos si el fichero comprimido ya existe
    if [[ -f $ficheroTar ]]
    then
        # Consultamos al usuario sobre el borrado o actualización
        read -rep "El fichero $ficheroTar ya existe. ¿Deseas borrarlo y crear uno nuevo (1) o añadir al existente (2)? " eleccion
        
        if [[ $eleccion != 1 ]]
        then
            rm $ficheroTar
            tar -rf $ficheroTar $objetivo
            echo "Fichero anterior borrado y creado uno nuevo con $objetivo."
        elif [[ $eleccion != 2 ]]
        then
            tar -rf $ficheroTar $objetivo
            echo "Se ha añadido $objetivo a $ficheroTar."
        else
            echo "Opción no válida. Saliendo..."
            exit 1 # Salimos con error (ojito, no use break)
        fi
    else
        # Si no existe, se crea el fichero comprimido
        tar -rf $ficheroTar $objetivo
        echo "Fichero $ficheroTar creado con $objetivo."
    fi

# Caso de descompresión "-e"
elif [[ $opcion == "-e" ]]
then
    # Comprobamos si existe el fichero a descomprimir
    if [[ ! -f $ficheroTar ]]
    then
        echo "Error: El fichero $ficheroTar no existe."
        exit 1
    fi
    
    # Comprobamos si existe la ruta de destino
    if [[ ! -d $objetivo ]]
    then
        echo "Error: La ruta de destino $objetivo no existe."
        # exit 0
        exit 1 # Que te pensabas? Que te iba a dejar irte sin un error? NO.
    fi
    
    # Extraemos los ficheros del archivo comprimido en la ruta indicada
    tar -xf $ficheroTar -C $objetivo
    echo "Fichero $ficheroTar descomprimido en la ruta $objetivo."

# Control de opciones no válidas
else
    echo "Error: Opción no reconocida."
    echo "Utiliza -c o -e."
    exit 1 # Salimos con error gracias a que el usuario no sabe leer
fi