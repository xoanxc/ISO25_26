# 44 - Crear un programa que permita realizar la búsqueda binaria de información. 
#Para ello, debe recibir una listade números enteros secuenciales no repetidos.
#La búsqueda binaria consiste en dividir la lista a la mitad y comprobar si el valor de la mitad es menor o mayor que el que se busca. 
#Dependiendo de la comprobación, se buscará en la mitad inferior o en la mitad superior, hasta hallar el número objetivo.

#!/bin/bash

function binary_search {
    objetivo=50
    lista=$*
    tamañoLista=$(echo $lista | wc -w)

    if [[ $tamañoLista == 0 ]]
    then
        echo "Valor no encontrado"
        exit 1
    fi

    ((medio=($tam+1)/2))
    
    valor_medio=$(echo $lista | cut -d'' -f$medio)

    if [[ $objetivo == $valor_medio ]]
    then 
        echo "Valor encontrado"
    elif [[ $n == 1 ]]
    then 
        echo "No encontrado"
    elif [[ $objetivo < $valor_medio ]]
    then
        izq=$(echo $lista | cut -d' ' -f1-$(($medio-1)))
        binary_search $izq
    else
        der=$(echo $lista | cut -d' ' -f1-$(($medio+1))-$tam)
        binary_search $der
    fi
}

mi_lista="10 20 30 40 50 60"
binary_search $mi_lista

# Fumadon de Iago, se pasó