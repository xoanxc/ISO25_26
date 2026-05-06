#!/bin/bash
dato=3
nombre="iago"

# Esto es un comentario

: '
Hola mundo


echo $nombre

nombre="daniel"

echo $nombre

read -rep "Introduce tu nombre: " nombre

echo "Hola $nombre"


# Variables del sistema

echo $HOME
echo $PWD
echo $PATH
echo $USER
echo $UID

# Variables de script

echo $0

echo $1
echo $2

echo $#

echo $*

ls ñ
echo $?


#1 - Crea un programa que muestre por pantalla el mensaje "Hola mundo!"

echo "Hola mundo!"

#2 - Crea un programa que contenga una variable llamada "mensaje" con el contenido "Hola mundo!"

mensaje="Hola mundo!"

#3 - Crea un programa que contenga una variable llamada "mensaje" con el contenido "Hola mundo!". Muestra por pantalla el contenido de la variable

mensaje="Hola mundo!"
echo $mensaje

#4 - Crea un programa que contenga dos variables llamadas "mensaje1" y "mensaje2" con el contenido "Hola" y "mundo!" respectivamente. Muestra por pantalla el contenido de cada variable.

mensaje1="Hola"
mensaje2="mundo!"

echo $mensaje1
echo $mensaje2

#5 - Crea un programa que contenga dos variables llamadas "mensaje1" y "mensaje2" con el contenido "Hola" y "mundo!" respectivamente. Muestra por pantalla el contenido del mensaje concatenado. El resultado debería ser el mensaje "Hola mundo! por pantalla.

mensaje1="Hola"
mensaje2="mundo!"

mensaje_total="$mensaje1 $mensaje2"
echo $mensaje_total


let "resultado=2/2"

echo $resultado

#6 - Crea un programa que contenga dos variables llamadas numero1 y numero2 con valores numéricos enteros. Calcula las operaciones aritméticas básicas y muestra el resultado por pantalla de cada una.

numero1=4
numero2=7

let "resultado = $numero1 + $numero2"
echo "$numero1 + $numero2 = $resultado"

let "resultado = $numero1 - $numero2"
echo "$numero1 - $numero2 = $resultado"

let "resultado = $numero1 * $numero2"
echo "$numero1 * $numero2 = $resultado"

let "resultado = $numero1 / $numero2"
echo "$numero1 / $numero2 = $resultado"

let "resultado = $numero1 % $numero2"
echo "$numero1 % $numero2 = $resultado"

#7 - Crea un programa que solicite al usuario un valor numérico entero entre el 1 y el 9. Muestra la tabla de multiplicar (del 1 al 9) de dicho valor.

read -rep "Introduce un valor numérico del 1 al 9: " valor

let "resultado = $valor * 1"
echo "$valor * 1 = $resultado"
let "resultado = $valor * 2"
echo "$valor * 2 = $resultado"
let "resultado = $valor * 3"
echo "$valor * 3 = $resultado"
let "resultado = $valor * 4"
echo "$valor * 4 = $resultado"
let "resultado = $valor * 5"
echo "$valor * 5 = $resultado"
let "resultado = $valor * 6"
echo "$valor * 6 = $resultado"
let "resultado = $valor * 7"
echo "$valor * 7 = $resultado"
let "resultado = $valor * 8"
echo "$valor * 8 = $resultado"
let "resultado = $valor * 9"
echo "$valor * 9 = $resultado"


#8 - Crea un programa que reciba por parámetros dos valores enteros. El primero será la base y el segundo la altura de un rectángulo. Muestra por pantalla el perímetro y el área del mismo.

# Para acceder a los parametros usamos $n(1-9)
base=$1
altura=$2

let "area = $base * $altura"
let "perimetro = ($base * 2) + ($altura * 2)"

echo "El área es $area"
echo "El perímetro es $perimetro"


read -rep "Introduce un número: " numero
# $numero > 0

if [ $numero -gt 0 ]
then
	echo "El valor es positivo"
elif [ $numero -eq 0 ]
then
	echo "El valor es 0"
else
	echo "El valor es negativo"	
fi 


numero=$1

case $numero in
	1)
		echo "El valor es 1"
	;;
	2)
		echo "El valor es 2"
	;;
	*)
		echo "Valor no válido"
	;;
esac

if [ $numero -eq 1 ]
then
elif [ $numero -eq 2 ]
then
else
fi


#9 - Crea un programa que solicite al usuario los valores "altura" y "ancho" de un rectángulo. El usuario puede elegir si calcular el área o el perímetro del rectángulo. Muestra por pantalla el resultado. Ej.:
# > Indica la altura: <altura>
# > Indica el ancho: <ancho>
# > ¿Qué quieres calcular?
#1- Área
#2- Perímetro
#<opcion>
#(En caso de escoger la primera opción)
#> El área del rectángulo es <area>
# RESOLUCIÓN EJERCICIO 9
read -rep "Introduce la altura del rectángulo: " altura
read -rep "Introduce el ancho del rectángulo: " ancho

echo "¿Qué quieres calcular?"
echo "1- Área"
echo "2- Perímetro"
read -rep "" opcion
if [ $opcion -eq 1 ]
then
	let "area = $altura * $ancho"
	echo "El área es $area"
elif [ $opcion -eq 2 ]
then
	let "perimetro = ($altura * 2) + ($ancho * 2)"
	echo "El perímetro es $perimetro"
else
	echo "Opción no válida. Saliendo..."
fi

#10 - Crea un programa que muestre un menú al usuario de productos. El usuario podrá escoger uno de los productos y se le informará del valor del mismo.
#RESOLUCIÓN EJERCICIO 10
echo "Menú"
echo "1. Pokeball"
echo "2. Poción"
echo "3. Repelente"
read -rep "" opcion
case $opcion in
	1)
		echo "El precio es de 100"
	;;
	2)
		echo "El precio es de 50"
	;;
	3)
		echo "El precio es de 150"
	;;
	*)
		echo "Item no encontrado"
	;;
esac

# 11 - Crea un programa que muestre al usuario una definición y le solicite escoger una opción correcta. Muestra por pantalla el acierto o error.
# RESOLUCIÓN EJERCICIO 11
echo "Pikachu es de tipo..."
echo "1. Eléctrico"
echo "2. Normal"
echo "3. Ratón"
echo "4. Ninguna de las anteriores"
read -rep "" respuesta

correcta=1

if [ $respuesta -eq $correcta ]
then
	echo "¡Correcto!"
else
	echo "¡Error!"
fi

#12- Crea un programa que muestre un menú al usuario con figuras geométricas (rectángulo, triángulo y círculo). Cuando el usuario escoja una figura, mostrar un menú de operaciones posibles (área y perímetro). Una vez decidida la figura y la operación, solicitar los valores necesarios para calcularla y mostrar el resultado correspondiente por pantalla.

echo "Figuras"
echo "1. Rectángulo"
echo "2. Triángulo"
echo "3. Círculo"

read -rep "" figura

echo "¿Qué operación quieres realizar?"
echo "1. Área"
echo "2. Perímetro"

read -rep "" operacion

operador1=0
operador2=0

if [ $figura -eq 1 -o $figura -eq 2 ]
then
	read -rep "Introduce la base: " operador1
	if [ $figura -eq 1 ]
	then
		read -rep "Introduce la altura: " operador2
	fi
elif [ $figura -eq 3 ]
then
	read -rep "Introduce el radio: " operador1
else
	echo "Error, figura no encontrada"
	exit 1
fi


resultado=0
PI=3
texto_operacion=""
if [ $operacion -eq 1 ]
then
	texto_operacion="área"
	if [ $figura -eq 1 ]
	then
		let "resultado = $operador1 * $operador2"
	elif [ $figura -eq 2 ]
	then
		let "resultado = ($operador1 * $operador2) / 2)"
	else
	then
		let "resultado = $PI * ($operador1 ** 2)"
	fi
elif [ $operacion -eq 2 ]
then
	texto_operacion="perímetro"
	if [ $figura -eq 1 ]
	then
		let "resultado = ($operador1 * 2) + ($operador2 * 2)"
	elif [ $figura -eq 2 ]
	then
		let "resultado = $operador1 * 3"
	else
		let "resultado = 2 * $PI * $operador1"
	fi
else
	echo "Error, operación no encontrada. Saliendo..."
	exit 2
fi

echo "El resultado del $texto_operacion es $resultado"


#13 - Crea un programa que solicite al usuario un valor y muestre si es par o impar

read -rep "Introduce un valor: " valor

let "resultado=$valor % 2"

if [ $resultado -eq 0 ]
then
	echo "$valor es par"
else
	echo "$valor es impar"
fi

#14 - Crea un programa que, dado un par de valores numéricos enteros, indicar si es mayor el producto del primero por 2, el cuadrado del segundo o si son iguales

read -rep "Indica el primer valor: " valor1
read -rep "Indica el segundo valor: " valor2


let "resultado1=$valor1 * 2"
let "resultado2=$valor2 ** 2"

if [ $resultado1 -gt $resultado2 ]
then
	echo "El primer resultado es mayor que el segundo"
elif [ $resultado1 -lt $resultado2 ]
then
	echo "El segundo resultado es mayor que el primero"
else
	echo "Los resultados son iguales"
fi



#15 - Crea un programa que solicite al usuario dos cadenas de texto. Mostrar por pantalla si son la misma cadena o no.

read -rep "Introduce una cadena: " cadena1
read -rep "Introduce otra cadena: " cadena2

if [ $cadena1 == $cadena2 ]
then
	echo "Las cadenas son idénticas"
else
	echo "Las cadenas son distintas"
fi


#16 - Crea un programa que reciba por parámetro los valores "s" o "r", además de dos valores numéricos enteros. Si recibe el parámetro "s" deberá mostrar la suma de ambos valores. Si recibe el parámetro "r" deberá mostrar la resta del primer valor por el segundo.

valor1=$1
valor2=$2
operador=$3

if [ $operador == "s" ]
then
	let "resultado=$valor1 + $valor2"
elif [ $operador == "r" ]
then
	let "resultado=$valor1 - $valor2"
else
	echo "Operación no soportada. Saliendo..."
	exit 1
fi

echo "El resultado es $resultado"

# 17 - Crea un programa que muestre por pantalla si recibe o no parámetros. Si recibe parámetros, mostrar el número de ellos. Si no, mostrar un mensaje de error.

if [ $# -ne 0 ]
then
	echo "Se recibieron $# parámetros"
else
	echo "Error, no se recibieron parámetros"
fi

# 18 - Crea un programa que solicite al usuario una cadena de texto. Si el usuario no escribe nada, mostrar por pantalla un error.

read -rep "Introduce una cadena: " cadena

if [ -z $cadena ]
then
	echo "Error, la cadena está vacia"
else
	echo "La cadena contiene valores"
fi



contador=0
echo "----While----"
while [ $contador -lt 10 ]
do
	echo $contador
	let "contador = $contador + 1"
done

contador=0
echo "----Until----"
until [ $contador -ge 10 ]
do
	echo $contador
	let "contador = $contador + 1"
done

echo "----For----"
for i in $*
do
	echo $i
done

echo "----For rango----"
for j in {10..1}
do
	echo $j
done


# 19 - Crea un programa que muestre por pantalla los valores numéricos enteros entre dos valores solicitados al usuario, asegurándote de que el primer valor es menor que el segundo. Si no lo es, informar del error.

read -rep "Introduce el primer valor: " valor1
read -rep "Introduce el segundo valor: " valor2

if [ $valor1 -ge $valor2 ]
then
	echo "Error, valores erróneos"
	exit 1
fi

while [ $valor1 -le $valor2 ]
do
	echo $valor1
	let "valor1 = $valor1 + 1"
done


# 20 - Crea un programa que, dado un valor del usuario, calcule la tabla de multiplicar de dicho valor del 1 al 9 y los muestre por pantalla.

read -rep "Introduce el valor: " valor

for i in {1..9}
do
	let "resultado=$valor * $i"
	echo "$valor x $i = $resultado"
done

contador=1
while [ $contador -lt 10 ]
do
	let "resultado = $valor * $contador"
	echo "$valor x $contador = $resultado"
	let "contador = $contador + 1"
done

#21 - Crea un programa que solicite valores al usuario y muestre por pantalla el valor sumado al valor anterior introducido. El programa se detendrá al recibir un 0

sumatorio=0
entrada=-1

while [ $entrada -ne 0 ]
do
	read -rep "Introduce un valor: " entrada
	let "sumatorio = $sumatorio + $entrada"
	echo "Suma: $sumatorio"
done

#22 - Crea un programa que solicite valores al usuario hasta que introduzca un 0. Muestra por pantalla la media de todos los valores introducidos.

sumatorio=0
entrada=-1
contador=0

while [ $entrada -ne 0 ]
do
	read -rep "Introduce un valor: " entrada
	if [ $entrada -ne 0 ]
	then
		let "contador = $contador + 1"
		let "sumatorio = $sumatorio + $entrada"
	fi
done

let "media = $sumatorio / $contador"

echo "La media es $media"


#23 - Crea un programa que solicite valores al usuario hasta que introduzca un 0. Muestra por pantalla el número total de valores introducidos (menos el último, el 0), la media de los valores, el valor máximo introducido y el valor mínimo introducido en la secuencia.

sumatorio=0
entrada=-1
contador=0
max=-9999999
min=9999999
while [ $entrada -ne 0 ]
do
	read -rep "Introduce un valor: " entrada
	
	if [ $entrada -gt $max ]
	then
		max=$entrada
	fi
	
	if [ $entrada -lt $min ]
	then
		min=$entrada
	fi
	
	if [ $entrada -ne 0 ]
	then
		let "contador = $contador + 1"
		let "sumatorio = $sumatorio + $entrada"
		
	fi
done

let "media = $sumatorio / $contador"

echo "La media es $media"
echo "El número de valores introducidos fueron $contador"
echo "El número máximo introducido es $max"
echo "El número mínimo introducido es $min"


# 24 - Crea un programa que genere un valor numérico entero aleatorio entre 0 y 100 (incluidos). El usuario deberá intentar adivinar el valor generado en 5 intentos. El programa informará de cuán cerca está el usuario de acertar (es mayor, es menor, etc). Si el usuario no acierta el número, mostrarlo por pantalla. Si lo consigue, mostrar un mensaje de victoria.

let "aleatorio=$RANDOM % 101"

intentos=0
max_intentos=5
isAcierto=0 # Si acierta el usuario, cambiará a 1

while [ $intentos -lt $max_intentos -a $isAcierto -eq 0 ]
do
	read -rep "Introduce el valor para adivinar: " entrada
	
	if [ $entrada -ne $aleatorio ]
	then
		if [ $entrada -lt $aleatorio ]
		then
			echo "El valor buscado es mayor"
		elif [ $entrada -gt $aleatorio ]
		then
			echo "El valor buscado es menor"
		fi
	else
		isAcierto=1
	fi
	let "intentos = $intentos + 1"
done

if [ $isAcierto -eq 1 ]
then
	echo "Victoria"
else
	echo "Fallaste, el valor era $aleatorio"
fi


# 25 - Crea un programa que permita calcular tantos valores de la secuencia de Fibonacci como el usuario indique. La secuencia de Fibonacci es aquella cuyo valor siguiente es la suma del valor actual y el anterior, siendo casos especiales el 0 y el 1 (0 1 1 2 3 5 8 13...)

read -rep "Introduce la cantidad de valores a visualizar: " n_valores

contador=0
anterior=0
actual=1

fibonacci=0

while [ $contador -lt $n_valores ]
do
	if [ $contador -eq 0 ]
	then
		echo $anterior
	elif [ $contador -eq 1 ]
	then
		echo $actual
	else
		let "fibonacci=$anterior + $actual"
		echo $fibonacci
		anterior=$actual
		actual=$fibonacci 
	fi	
	let "contador = $contador + 1"
done


# 26 - Crea un programa que permita calcular los números primos desde el 1 hasta el número indicado por el usuario. Los números primos son aquellos que son solo divisibles por ellos mismos y la unidad (el 19, por ejemplo), por lo que el resto con cualquier otro número ha de ser distinto de 0

read -rep "Introduce hasta que número calcular: " valor

contador_1=1 # Contador para determinar fin del bucle
contador_2=2 # Contador para calculo de los primos
isPrimo=0 # 0 Es primo, 1 no lo es
resto=0 # Variable para el calculo de valor primo

while [ $contador_1 -lt $valor ]
do
	contador_2=2
	isPrimo=0
	if [ $contador_1 -eq 1 -o $contador_1 -eq 2 ]
	then
		echo "$contador_1 es primo"
	else
		while [ $contador_2 -lt $contador_1 -a $isPrimo -eq 0 ]
		do
			let "resto = $contador_1 % $contador_2"
			if [ $resto -eq 0 ]
			then
				isPrimo=1
			fi
			let "contador_2 = $contador_2 + 1"
		done
		if [ $isPrimo -eq 0 ]
		then
			echo "$contador_1 es primo"
		fi
	fi
	let "contador_1 = $contador_1 + 1"
done


#27 - Crear un programa que solicite al usuario una ruta. Indicar si es un fichero o un directorio. En caso de ser un fichero, mostrar el contenido. Si es un directorio, mostrar los ficheros que contiene.

read -rep "Introduce una ruta: " ruta

if [ -d $ruta ]
then
	echo "La ruta introducida es un directorio."
	echo "---Contenido---"
	ls $ruta
elif [ -f $ruta ]
then
	echo "La ruta introducida es un fichero."
	echo "---Contenido---"
	cat $ruta
else
	echo "Error, ruta errónea."
fi


#28 - Crea un programa que indique si el usuario que lanza el script tiene permisos de administrador o no.

if [ $UID -eq 0 ]
then
	echo "Tienes permisos de admin"
else
	echo "No tienes permisos de admin"
fi

#29 - Crea un programa que permita crear usuarios dado un nombre de usuario. 

if [ $UID -eq 0 ]
then
	read -rep "Introduce el nombre del usuario: " usuario
	useradd $usuario
else
	echo "Error, debes ser admin para poder crear usuarios"
fi


#30 - Crea un programa que solicite al usuario ficheros y/o directorios hasta que introduzca un 0. Debe crearse un fichero comprimido con todos los ficheros y directorios introducidos.


valor=-1

while [ $valor != "0" ]
do
	read -rep "Introduce la ruta/directorio para comprimir: " valor
	if [ -d $valor -o -f $valor ]
	then
		tar -rf comprimido.tar $valor
	else
		echo "Ruta no válida"
	fi
done

#31 - Crea un programa que solicite un nombre de fichero al usuario. Si existe mostrar un aviso por pantalla que permita al usuario decidir si eliminar el fichero antiguo o mantenerlo. Si no existe, crearlo

read -rep "Introduce un nombre de fichero: " fichero

if [ -f $fichero ]
then
	read -rep "Cuidado, fichero ya existente. ¿Quieres eliminarlo? S/n" confirmacion
	if [ $confirmacion == "S" -o $confirmacion == "s" ]
	then
		rm $fichero
	else
		echo "De acuerdo, saliendo..."
	fi
else
	echo "Creando $fichero..."
	touch $fichero
fi

#32 - Crea un programa que permita borrar un fichero que se envía por parámetro. Para ello lo moverá a una carpeta oculta llamada "Papelera". Si no existe "Papelera", crearla.


fichero=$1
ruta_papelera=".Papelera"

if [ ! -d $ruta_papelera ]
then
	mkdir $ruta_papelera
fi

if [ -f $fichero ]
then
	mv $fichero $ruta_papelera
else
	echo "Error en la ruta, fichero no encontrado"
fi

#33 - Crea un programa que permita recuperar un fichero de la papelera. Para ello, recibirá por parámetro el fichero a recuperar y la ruta donde recuperarlo.

fichero=$1

ruta=$2

ruta_papelera=".Papelera"

if [ -f $ruta_papelera/$fichero ]
then
	mv $ruta_papelera/$fichero $ruta/$fichero
else
	echo "Error, fichero no encontrado en la papelera"
fi

#34 - Crea un programa que unifique las funciones anteriores. Debe de interpretar el número de parámetros para actuar de una forma u otra, es decir, si se recibe un parámetro, mover el fichero a la papelera y si se reciben dos parámetros, realizar la operación de recuperación

ruta_papelera=".Papelera"

if [ ! -d $ruta_papelera ]
then
	mkdir $ruta_papelera
fi

if [ $# -eq 1 ]
then
	fichero=$1
	
	if [ -f $fichero ]
	then
		mv $fichero $ruta_papelera
	else
		echo "Error en la ruta, fichero no encontrado"
	fi
	
elif [ $# -eq 2 ]
then
	fichero=$1
	ruta=$2
	if [ -f $ruta_papelera/$fichero ]
	then
		mv $ruta_papelera/$fichero $ruta/$fichero
	else
		echo "Error, fichero no encontrado en la papelera"
	fi
else
	echo "Error, comando utilizado incorrectamente"
fi

#35 - Crear un programa que permita al usuario crear un fichero, borrar un fichero o introducir valores en un fichero hasta que decida parar.

menu=0
while [ $menu -ne 4 ]
do
	echo "¿Qué quieres hacer?"
	echo "1. Crear fichero"
	echo "2. Eliminar fichero"
	echo "3. Añadir datos al fichero"
	echo "4. Salir"
	read -rep "" menu
	
	case $menu in
		1)
			read -rep "Introduce el nombre del fichero: " fichero
			if [ ! -f $fichero ]
			then
				echo "Fichero $fichero creado" 
				touch $fichero
			fi
		;;
		2)
			read -rep "Introduce el nombre del fichero: " fichero
			if [ -f $fichero ]
			then
				echo "Fichero $fichero borrado"
				rm $fichero
			fi
		;;
		4)
			read -rep "¿En qué fichero quieres introducir datos?" fichero
			entrada=0
			while [ -f $fichero -a $entrada -ne -1 ]
			do
				read -rep "Introduce los datos a pasar al fichero (-1 para parar): " entrada
				echo $entrada >> $fichero
			done
			echo "Saliendo..." 
		;;
		*)
			echo "Opción no válida"
		;;
	esac
done

#36 - Crea un programa que calcule el valor factorial de un parámetro dado. El factorial de un número es el producto de todos los valores enteros anteriores hasta la unidad. 5!=1x2x3x4x5

read -rep "Introduce el valor: " valor

contador=1
factorial=1

#while [ $contador -le $valor ]
#do
#	let "factorial=$factorial * $contador"
#	let "contador = $contador + 1"
#done

while [ $valor -gt 0 ]
do
	let "factorial = $factorial * $valor"
	let "valor = $valor - 1"
done

echo "Factorial: $factorial"

#37 - Crea un programa que reciba por parámetro un valor entero mayor que 0. Muestra por pantalla la transformación en binario del valor.

decimal=$1

while [ $decimal -gt 0 ]
do
	let "valor=$decimal % 2"
	cadena="$valor $cadena"
	let "decimal=$decimal / 2"
done

echo "Binario: $cadena"


'
#38 - Crear un programa que permita al usuario crear un fichero, borrar un fichero o introducir valores en un fichero hasta que decida parar. Utiliza funciones para segmentar o encapsular el código

function creacion {
    read -rep "Introduce el nombre del fichero: " fichero
    if [ ! -f $fichero ]
    then
        echo "Fichero $fichero creado" 
        touch $fichero
    fi
}

function eliminacion {
    read -rep "Introduce el nombre del fichero: " fichero
    if [ -f $fichero ]
    then
        echo "Fichero $fichero borrado"
        rm $fichero
    fi
}

function agregado {
    read -rep "¿En qué fichero quieres introducir datos?" fichero
    entrada=0
    while [ -f $fichero -a $entrada != "-1" ]
    do
        read -rep "Introduce los datos a pasar al fichero (-1 para parar): " entrada
        echo $entrada >> $fichero
    done
}

menu=0
while [ $menu -ne 4 ]
do
    echo "¿Qué quieres hacer?"
    echo "1. Crear fichero"
    echo "2. Eliminar fichero"
    echo "3. Añadir datos al fichero"
    echo "4. Salir"
    read -rep "" menu
    
    case $menu in
        1)
            creacion    
        ;;
        2)
            eliminacion
        ;;
        3)
            agregado
        ;;
        4)
            echo "Saliendo..." 
        ;;
        *)
            echo "Opción no válida"
        ;;
    esac
done

#39 - Crea un programa que emule un semáforo con las siguientes condiciones:
#1- Existen 2 semáforos. Pueden tener los colores rojo, ámbar y verde
#2- Los semáforos NO pueden estar ambos en rojo al mismo tiempo
#3- Si un semáforo está en rojo y el otro en verde, solo podrá cambiarse alguno de los dos a ámbar
# El usuario debe de poder escoger qué semáforo cambiar y a que color, con las condiciones dadas


semaforo1="verde"
semaforo2="verde"

menu=-1
while [ $menu -ne 3 ]
do
    echo "---Estado de los semáforos---"
    echo "Semáforo 1: $semaforo1"
    echo "Semáforo 2: $semaforo2"
    echo "¿Qué semáforo quieres modificar?"
    echo "1. Semáforo 1"
    echo "2. Semáforo 2"
    echo "3. Salir"
    read -rep "" menu
    
    case $menu in
        1)
            echo "---Semáforo 1---"
            echo "1. Rojo"
            echo "2. Ámbar"
            echo "3. Verde"
            echo "4. Salir"
            read -rep "" entrada
            
            if [ $entrada -eq 1 ]
            then
                if [ $semaforo1 == "rojo" -a $semaforo2 == "verde" ]
                then
                    echo "Error, no puedes pasar de rojo a verde o verde a rojo"
                elif [ $semaforo1 == "verde" -a $semaforo2 == "rojo" ]
                then
                    echo "Error, no puedes pasar de rojo a verde o verde a rojo"
                elif [ $semaforo2 == "rojo" ]
                then
                    echo "Ya hay un semáforo en rojo"
                else
                    semaforo1="rojo"
                fi
            elif [ $entrada -eq 3 ]
            then
                if [ $semaforo1 == "rojo" -a $semaforo2 == "verde" ]
                then
                    echo "Error, no puedes pasar de rojo a verde o verde a rojo"
                elif [ $semaforo1 == "verde" -a $semaforo2 == "rojo" ]
                then
                    echo "Error, no puedes pasar de rojo a verde o verde a rojo"
                else
                    semaforo1="verde"
                fi
            elif [ $entrada -eq 2 ]
            then
                semaforo1="ambar"
            fi
        ;;
        2)
            echo "---Semáforo 2---"
            echo "1. Rojo"
            echo "2. Ámbar"
            echo "3. Verde"
            echo "4. Salir"
            read -rep "" entrada
            
            if [ $entrada -eq 1 ]
            then
                if [ $semaforo1 == "rojo" -a $semaforo2 == "verde" ]
                then
                    echo "Error, no puedes pasar de rojo a verde o verde a rojo"
                elif [ $semaforo1 == "verde" -a $semaforo2 == "rojo" ]
                then
                    echo "Error, no puedes pasar de rojo a verde o verde a rojo"
                elif [ $semaforo1 == "rojo" ]
                then
                    echo "Ya hay un semáforo en rojo"
                else
                    semaforo2="rojo"
                fi
            elif [ $entrada -eq 3 ]
            then
                if [ $semaforo1 == "rojo" -a $semaforo2 == "verde" ]
                then
                    echo "Error, no puedes pasar de rojo a verde o verde a rojo"
                elif [ $semaforo1 == "verde" -a $semaforo2 == "rojo" ]
                then
                    echo "Error, no puedes pasar de rojo a verde o verde a rojo"
                else
                    semaforo2="verde"
                fi
            elif [ $entrada -eq 2 ]
            then
                semaforo2="ambar"
            fi
        ;;
        3)
            echo "Saliendo"
        ;;
        *)
            echo "Opción no válida"
        ;;
    esac

done


#40 - Crear un programa que, dado un valor n entero en euros, devuelva los billetes y monedas necesarios para dar el cambio justo. Es decir, si n=92, deberá devolver 1 billete de 50, 2 de 20 y una moneda de 2.

cantidad=$((1 + $RANDOM % 2000))
echo "Cantidad: $cantidad"

for valor in 500 200 100 50 20 10 5 2 1
do
    billetes=0
    
    if [ $cantidad -ge $valor ]
    then
        let "billetes = $cantidad / $valor"
        let "cantidad = $cantidad % $valor"
    fi
    
    echo "$billetes de $valor euros"
done

#41 - Crear un programa que permita jugar al Blackjack (21) con variante. El jugador recibe una carta por turno y se puede plantar antes de superar 21. Del 1 al 10 (se obvia el as). La máquina recibirá el mismo número de cartas que decida tener el jugador.  



debug=$1 # Variable para mostrar o no mensajes de depuracion. Necesitará ser "-q"
total_usuario=0 # Valor para las cartas del usuario
total_maquina=0 # Valor para las cartas de la máquina
respuesta="s" # Valor para continuar del usuario
contador=0 
min=1
max=10
objetivo=21

# para indicar si se hace debug o no
if [ $# -eq 1 ]
then
    if [ $debug == "-q" ]
    then
        debug_flag=1
    fi
else
    debug_flag=0
fi

while [ $respuesta != "n" -a $total_usuario -lt $objetivo ]
do
    let "carta=$min + $RANDOM % $max"
    
    if [ $debug_flag -eq 1 ]
    then
        echo "[DEBUG] Valor 'carta': $carta"
    fi
    
    let "total_usuario=$total_usuario + $carta"
    
    if [ $debug_flag -eq 1 ]
    then
        echo "[DEBUG] Valor 'total_usuario': $total_usuario"
    fi
    
    let "contador=$contador+1"
    
    if [ $debug_flag -eq 1 ]
    then
        echo "[DEBUG] Valor 'contador': $contador"
    fi
    
    echo "Carta recibida: $carta"
    echo "El valor de tus cartas es de $total_usuario"
    
    if [ $total_usuario -lt $objetivo ]
    then
        read -rep "¿Quieres otra carta? S/n " respuesta
    elif [ $total_usuario -eq $objetivo ]
    then
        echo "---Victoria---"
    else
        echo "---Derrota---"
    fi
done


while [ $total_usuario -lt $objetivo -a $contador -gt 0 ]
do
    let "carta=$min + $RANDOM % $max"
    if [ $debug_flag -eq 1 ]
    then
        echo "[DEBUG] Valor 'carta': $carta"
    fi
    let "total_maquina=$total_maquina + $carta"
    
    if [ $debug_flag -eq 1 ]
    then
        echo "[DEBUG] Valor 'total_maquina': $total_maquina"
    fi
    let "contador=$contador-1"
done

echo "La máquina ha obtenido un total de $total_maquina" 

if [ $total_maquina -le $objetivo -a $total_usuario -ne $objetivo ]
then
    if [ $total_maquina -gt $total_usuario ]
    then
        echo "---Derrota---"
    elif [ $total_maquina -lt $total_usuario ]
    then
        echo "---Victoria---"
    else
        echo "---Empate---"
    fi
else
    if [ $total_usuario -le $objetivo ]
    then
        echo "---Victoria---"
    fi
fi


# 42 - Crear un programa que permita simular un juego de carreras lentas. Se pedirá apostar por alguno de los participantes. El carrera consiste en moverse 10 casillas. Los participantes se moverán, cada uno, al azar, entre -3 y 3 casillas. Cada turno se verá la posición (no puede ser menor que 0).

# Variables que indican la posición de los participantes
participante_1=0
participante_2=0
participante_3=0
participante_4=0

# Valor de desplazamiento cada turno de los participantes
movimiento_azar=0

# Valores mínimo y máximo que pueden tener los participantes.
min=0
max=10

# Variable para indicar el valor de la apuesta del usuario
apuesta=0
ganador=0

clear
echo "---Carrera lenta---"
echo "¿Quién va a ganar?"
echo "1. Participante 1"
echo "2. Participante 2"
echo "3. Participante 3"
echo "4. Participante 4"
read -rep "" apuesta

while [ $ganador -eq 0 ]
do
    let "movimiento_azar = ($RANDOM % 7) - 3"
    let "participante_1 = $participante_1 + $movimiento_azar"
    if [ $participante_1 -lt $min ]
    then
        participante_1=0
    elif [ $participante_1 -ge $max -a $ganador -eq 0 ]
    then
        ganador=1
    fi
    
    echo "Participante 1: $participante_1"
    
    let "movimiento_azar = ($RANDOM % 7) - 3"
    let "participante_2 = $participante_2 + $movimiento_azar"
    if [ $participante_2 -lt $min ]
    then
        participante_2=0
    elif [ $participante_2 -ge $max -a $ganador -eq 0 ]
    then
        ganador=2
    fi
    
    echo "Participante 2: $participante_2"
    
    let "movimiento_azar = ($RANDOM % 7) - 3"
    let "participante_3 = $participante_3 + $movimiento_azar"
    if [ $participante_3 -lt $min ]
    then
        participante_3=0
    elif [ $participante_3 -ge $max -a $ganador -eq 0 ]
    then
        ganador=3
    fi
    
    echo "Participante 3: $participante_3"
    
    let "movimiento_azar = ($RANDOM % 7) - 3"
    let "participante_4 = $participante_4 + $movimiento_azar"
    if [ $participante_4 -lt $min ]
    then
        participante_4=0
    elif [ $participante_4 -ge $max -a $ganador -eq 0 ]
    then
        ganador=4
    fi
    
    echo "Participante 4: $participante_4"
    
    read -rep "" vacio
    clear
done

echo "El ganador de la carrera es el participante $ganador"

if [ $apuesta -eq $ganador ]
then
    echo "Enhorabuena"
else
    echo "Perdiste"
fi

# Solucion con funciones


# Variables que indican la posición de los participantes
participante_1=0
participante_2=0
participante_3=0
participante_4=0

# Valor de desplazamiento cada turno de los participantes
movimiento_azar=0

# Valores mínimo y máximo que pueden tener los participantes.
min=0
max=10

# Variable para indicar el valor de la apuesta del usuario
apuesta=0
ganador=0

function desplazamiento {
    # Parametros esperados:
    # $1 -> Debe ser la variable del participante 
    # $2 -> El numero de participante
    participante=$1
    numero=$2
    
    let "movimiento_azar = ($RANDOM % 7) - 3"
    let "participante = $participante + $movimiento_azar"
    if [ $participante -lt $min ]
    then
        participante=0
    elif [ $participante -ge $max -a $ganador -eq 0 ]
    then
        ganador=$numero
    fi
    
    echo "Participante $numero: $participante"
    
    return $participante
}

clear
echo "---Carrera lenta---"
echo "¿Quién va a ganar?"
echo "1. Participante 1"
echo "2. Participante 2"
echo "3. Participante 3"
echo "4. Participante 4"
read -rep "" apuesta

while [ $ganador -eq 0 ]
do
    desplazamiento $participante_1 1
    participante_1=$?
    
    desplazamiento $participante_2 2
    participante_2=$?
    
    desplazamiento $participante_3 3
    participante_3=$?
    
    desplazamiento $participante_4 4
    participante_4=$?
    
    read -rep "" vacio
    clear
done

echo "El ganador de la carrera es el participante $ganador"

if [ $apuesta -eq $ganador ]
then
    echo "Enhorabuena"
else
    echo "Perdiste"
fi