# Crea un programa que permita crear usuarios dado un nombre de usuarios.

if [ $UID -eq 0 ]
then 
        read -rep "Introduce el nombre del usuario: " usuario
        useradd $usuario
else
        echo "Error, debes ser admin para poder crear usuarios"
fi