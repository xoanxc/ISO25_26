#!/bin/bash

# Creamos el nombre del fichero oculto basándonos en el usuario actual como pide el enunciado
ficheroDiario="/home/$USER/.diario_$USER" # Como extra personal, guardamos el diario siempre en la carpeta personal del usuario

# Variable de control para el menu, la iniciamos en 0
menu=0

# Mostramos un menú hasta que el usuario introduzca el numero 4 con el bucle while
while [[ $menu != 4 ]]
do
    echo "Menú Diario Personal"
    echo "1. Añadir entrada al diario"
    echo "2. Ver contenido del diario"
    echo "3. Eliminar diario permanentemente (cuidado)"
    echo "4. Salir"
    echo "Introduce una opción"
    read -rep "> " menu
    
    # Utilizo un case para comprobar el numero introducido
    case $menu in
        1)
            entrada="" # Declaro variable vacia para la entrada
            echo ""
            echo "Introduce el texto para el diario (escribe -1 para parar):"
            
            # Solicitamos texto hasta que el usuario decida parar
            while [[ $entrada != "-1" ]]
            do
                read -rep "> " entrada
                if [[ $entrada != "-1" ]]
                then
                    # Obtenemos la fecha actual utilizando la variable "$date" y guardamos la fecha y el contenido con el formato solicitado
                    fecha=$(date)
                    echo "$fecha: $entrada" >> $ficheroDiario
                fi
            done
        ;;
        2)
            # Comprobar si el diario es un fichero y mostrarlo
            if [[ -f $ficheroDiario ]]
            then
                echo "--- Contenido del diario ---"
                echo ""
                cat $ficheroDiario
                echo ""
                echo "------------------------------"
            else
                echo "Tu diario aún no existe o está vacío."
                echo ""
            fi
        ;;
        3)
            # Borrado del fichero consultando al usuario si su elección es correcta
            if [[ -f $ficheroDiario ]]
            then
                read -rep "Cuidado, estas a punto de eliminar tu diario. ¿Estás seguro? (S/N): " confirmacion
                if [[ $confirmacion == "S" || $confirmacion == "s" ]] # Utilizamos or para aceptar minusculas y mayusculas
                then
                    rm -f $ficheroDiario # Ya sabes que me encanta utiizar rm -rf, pero no es necesaria la -r al ser siempre un fichero y no quiero que me quites puntos, utilizamos la -f por si acaso.
                    echo "Diario eliminado correctamente."
                    echo ""
                else
                    echo "Operación cancelada."
                    echo ""
                fi
            else
                echo "Error: El diario no existe."
                echo ""
            fi
        ;;
        4)
            echo "Saliendo del script..."
            echo ""
        ;;
        *)
            echo "Opción no válida, vuelve a intentarlo."
            echo ""
            echo ""
        ;;
    esac
done