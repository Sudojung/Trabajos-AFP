EJERCICIO 3: Escriba un programa que muestre la suma de los 20 primeros múltiplos de 3.

INICIO
	Definir i, multiploo, suma, num Como Entero
	
	suma <- 0
	
	Escribir "Introduce el número del cual quieres la suma de sus múltiplos:"
	Leer num
	
	Para i <- 1 Hasta 20 Con Paso 1 Hacer
		multiploo <- i * num
		suma <- suma + multiploo
	FinPara
	
	Escribir "La suma de los 20 primeros múltiplos de ", num, " es: ", suma
FIN