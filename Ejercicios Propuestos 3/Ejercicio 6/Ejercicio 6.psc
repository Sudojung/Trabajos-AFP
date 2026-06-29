Algoritmo BubbleSortCadena
    Definir n, i, j Como Entero
    Definir aux Como Caracter
    
    Escribir "Ingrese la cantidad de caracteres:"
    Leer n
    
    Definir cadena Como Caracter
    Dimension cadena[n]
    
    Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        Escribir "Carácter para la posición ", i, ":"
        Leer cadena[i]
    Fin Para
    
	// Bubble Sort
    Para i <- 0 Hasta n - 2 Con Paso 1 Hacer
        Para j <- 0 Hasta n - i - 2 Con Paso 1 Hacer
            Si cadena[j] > cadena[j+1] Entonces
                aux <- cadena[j]
                cadena[j] <- cadena[j+1]
                cadena[j+1] <- aux
            Fin Si
        Fin Para
    Fin Para
    
    Escribir "Cadena ordenada:"
    Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        Escribir Sin Saltar cadena[i]
    Fin Para
    Escribir ""
FinAlgoritmo
