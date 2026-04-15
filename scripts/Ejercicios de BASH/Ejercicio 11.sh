#Crea un programa que muestre al usuario una definición y le solicite escoger una opción correcta. Muestra por pantalla el acierto o error. Ej.:

#> Pikachu es de tipo…
#1. Eléctrico
#2. Normal
#3. Ratón
#4. Ninguna de las anteriores
#(En caso de escoger la primera opción)
#> ¡Correcto!

#!/bin/bash
echo "Pikachu es de tipo..."
echo "1. Eléctrico"
echo "2. Normal"
echo "3. Ratón"
echo "4. Ninguna de las anteriores"
read -p "Seleccione la opción correcta: " opcion

case $opcion in
    1)
        echo "¡Correcto!"
        ;;
    2|3|4)
        echo "¡Incorrecto! La respuesta correcta es Eléctrico."
        ;;
    *)
        echo "Opción no válida. Por favor, seleccione una opción del menú."
        ;;
esac