# Crea un programa programa que solicite al usuario ficheros y/o directorios hasta que introduzca un 0. Debe crearse un fichero comprimido con todos los ficheros y directorios introducidos.

valor=-1

while [ $valor -!= "0" ]
do
        read -rep "Introduce la ruta/directorio para comprimir: " valor

        if [ -d $valor -o -f $valor ]
        then 
                tar -rf comprimido-tar $valor
        else
                echo "Ruta no valida"
        fi
done