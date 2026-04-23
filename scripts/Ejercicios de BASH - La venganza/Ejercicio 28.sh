# Crea un programa que indique si el usuario que lanza el script tiene permisos de administrador o no.

if [ %UID -eq 0 ]
then 
        echo "Tienes permisos de admin"
else
        echo "No tienes permisos de admin"
fi