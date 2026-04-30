#40 - Crear un programa que, dado un valor n entero en euros, devuelva los billetes y monedas necesarios para dar el cambio justo. Es decir, si n=92, deberá devolver 1 billete de 50, 2 de 20 y una moneda de 2.
#!/bin/bash


# IMPORTANTE: / nos devuelve las veces que el número cabe en el total, y % nos devuelve el resto de la división, es decir, lo que queda por repartir en este caso.
read -rep "Introduce la cantidad en euros para calcular el cambio: " total

echo "Para la cantidad de $total €, el cambio es:"

# Calculo billetes de 50
let "cantidad = $total / 50"
if [ $cantidad -gt 0 ]
then
    echo "$cantidad billete(s) de 50 €"
    let "total = $total % 50"
fi

# Calculo billetes de 20
let "cantidad = $total / 20"
if [ $cantidad -gt 0 ]
then
    echo "$cantidad billete(s) de 20 €"
    let "total = $total % 20"
fi

# Calculo billetes de 10
let "cantidad = $total / 10"
if [ $cantidad -gt 0 ]
then
    echo "$cantidad billete(s) de 10 €"
    let "total = $total % 10"
fi

# Calculo billetes de 5
let "cantidad = $total / 5"
if [ $cantidad -gt 0 ]
then
    echo "$cantidad billete(s) de 5 €"
    let "total = $total % 5"
fi

# Calculo monedas de 2
let "cantidad = $total / 2"
if [ $cantidad -gt 0 ]
then
    echo "$cantidad moneda(s) de 2 €"
    let "total = $total % 2"
fi

# Calculo monedas de 1
let "cantidad = $total / 1"
if [ $cantidad -gt 0 ]
then
    echo "$cantidad moneda(s) de 1 €"
    let "total = $total % 1"
fi

# POR FIN SE TERMINO!!!