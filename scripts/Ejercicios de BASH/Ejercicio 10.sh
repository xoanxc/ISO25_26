#Crea un programa que muestre un menú al usuario de productos. El usuario podrá escoger uno de los productos y se le informará del valor del mismo. Ej.:

#> Menú
#1. Pokeball
#2. Poción
#3. Repelente
#> <opcion>

#(En caso de la primera opción)
#> El precio es de <precio>

#!/bin/bash
echo "> Menú"
echo "1. Pokeball"
echo "2. Poción"
echo "3. Repelente"
read -rep "><opcion>" opcion

case $opcion in
    1)
        echo "El precio de la Pokeball es de 200 pokemonedas."
    ;;
    2)
        echo "El precio de la Poción es de 300 pokemonedas."
    ;;
    3)
        echo "El precio del Repelente es de 350 pokemonedas."
        ;;
    *)
        echo "Opción no valida, por favor elija una opción disponible en el menú."
    ;;
esac