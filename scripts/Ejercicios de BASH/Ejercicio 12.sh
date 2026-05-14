# Crea un programa que muestre un menú al usuario con figuras geométricas (rectángulo, triángulo y círculo). Cuando el usuario escoja una figura, mostrar un menú de operaciones posibles (área y perímetro). Una vez decidida la figura y la operación, solicitar los valores necesarios para calcularla y mostrar el resultado correspondiente por pantalla.

#!/bin/bash

areaPerimetro() {
    echo ""
    echo "Selecciona una operación"
    echo "1.Área"
    echo "2.Perímetro "
    read -rep "> " areaPerimetroV
}

areaValores() {
    echo""
    echo "Intoduce la base"
    read -rep "> " base
    echo "Introduce la altura"
    read -rep "> " altura
}

echo "Selecciona una figura"
echo "1.Rectángulo"
echo "2.Triángulo"
echo "3.Círculo"
read -rep "> " figura

case $figura in
    1) # Rectángulo
        areaPerimetro
        areaValores

        if [[ $areaPerimetroV == 1 ]] # Area
        then
            let "resultado = base * altura"
            echo "El área del rectángulo es $resultado"
        else # Perimetro
            let "resultado = 2 * (base + altura)"
            echo "El perímetro  del rectángulo es $resultado "
        fi
    ;;
    2) # Triángulo
        areaPerimetro
        areaValores

        if [[ $areaPerimetroV == 1 ]] # Area
        then 
            let "resultado = (base * altura) / 2"
            echo "El área del triángulo es $resultado"
        else
            let "resultado = base * 3"
            echo "El perímetro  del triángulo es $resultado"
        fi
    ;;
    3) # Círculo
        areaPerimetro
        echo "Introduce el radio:"
        read -rep "> " radio
    ;;
    *)
        echo "Opción no válida. Por favor, seleccione una opción del menú."
    ;;
esac