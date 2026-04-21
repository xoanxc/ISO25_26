#Crear un programa que muestre por pantalla si recibe o no parámetros. Si recibe parámetros, mostrar el número de ellos. Si no, mostrar un mensaje de error.

if [ $# -eq 0 ]; then
    echo "Error: No se han recibido parámetros."
else
    echo "Número de parámetros recibidos: $#"
fi