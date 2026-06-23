INICIO
	Definir binario, hex, bloque, digitoHex Como Caracter
	Definir i, j Como Entero
	Definir esBinario Como Logico
	
	Repetir
		Escribir "Ingrese un número binario (solo 0 y 1):"
		Leer binario
		
		esBinario <- Verdadero
		Para j <- 1 Hasta Longitud(binario) Hacer
			Si Subcadena(binario, j, j) <> "0" Y Subcadena(binario, j, j) <> "1" Entonces
				esBinario <- Falso
			FinSi
		FinPara
		
		Si No esBinario Entonces
			Escribir "Error: El texto introducido no es un numero binario."
		FinSi
	Hasta Que esBinario
	
	Mientras Longitud(binario) MOD 4 <> 0 Hacer
		binario <- "0" + binario
	FinMientras
	
	hex <- ""  
	Para i <- 1 Hasta Longitud(binario) Con Paso 4 Hacer
		bloque <- Subcadena(binario, i, i + 3)     
		Segun bloque Hacer
			"0000": digitoHex <- "0"
			"0001": digitoHex <- "1"
			"0010": digitoHex <- "2"
			"0011": digitoHex <- "3"
			"0100": digitoHex <- "4"
			"0101": digitoHex <- "5"
			"0110": digitoHex <- "6"
			"0111": digitoHex <- "7"
			"1000": digitoHex <- "8"
			"1001": digitoHex <- "9"
			"1010": digitoHex <- "A"
			"1011": digitoHex <- "B"
			"1100": digitoHex <- "C"
			"1101": digitoHex <- "D"
			"1110": digitoHex <- "E"
			"1111": digitoHex <- "F"
		FinSegun
		hex <- hex + digitoHex
	FinPara
	
	Escribir "El número en Hexadecimal (base 16) es: ", hex
FIN
