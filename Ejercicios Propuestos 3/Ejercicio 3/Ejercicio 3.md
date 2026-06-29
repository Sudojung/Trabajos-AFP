# Ejercicio 3:

 Matriz identidad: Generar una matriz identidad de tamaño n. 


# Algoritmo:

INICIO

    Definir n, f, c Como Entero
    
    Escribir "Ingrese el tamaño (n) de la matriz cuadrada:"
    Leer n
    
    Definir matriz Como Entero
    Dimension matriz[n, n]
    
    // Generamos la matriz identidad
    Para f <- 0 Hasta n - 1  Hacer
        Para c <- 0 Hasta n - 1  Hacer
            Si f == c Entonces
                matriz[f, c] <- 1 // Es la diagonal principal
            Sino
                matriz[f, c] <- 0 // Y el esto de posiciones
            Fin Si
        Fin Para
    Fin Para
    
    // Mostramos como es la matriz 
    Para f <- 0 Hasta n - 1  Hacer
        Para c <- 0 Hasta n - 1  Hacer
            Escribir Sin Saltar matriz[f, c], "  "
        Fin Para
        Escribir "" // Salto de línea por cada fila para que se vea entendible
    Fin Para

FIN


# Prueba de Escritorio:

