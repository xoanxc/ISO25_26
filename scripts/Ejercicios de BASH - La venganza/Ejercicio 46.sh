# 46 - Crear un programa que permita convertir unidad de diferentes campos. Algunos pueden ser:
# - Conversión de temperatura: De Celsius a Kelvin o Fahrenheit, o viceversa.
# - Conversor de tamaño: De metros a pulgadas y viceversa
# - Conversor de monedas: De Euros a Libras, a Dólares y viceversa
# El usuario debe poder escoger tanto la unidad de origen como el destino

echo "Elige el tipo de conversión:"
echo "1.Conversión de temperatura"
echo "2.Conversor de tamaño"
echo "3.Conversor de monedas"
read -rep "> " opcion

case $opcion in 
	1)
		echo "1.De Celsius a Kelvin"
		echo "2.De Celsius a Fahrenheit"
		echo -rep "> " $opcion

		case $opcion in 
			1)
				echo ""
			;;
			2)
				
			;;
			esac

	;;
	2)
		echo "1.De metros a pulgadas"
		echo "2.De pulgadas a metros"
		echo -rep "> " $opcion
	;;
	3)
		echo "1.De Euros a Libras"
		echo "2.De Euros a Dólares"
		echo -rep "> " $opcion
	;;
	*)
		echo "Opción incorrecta"
	;;
esac


