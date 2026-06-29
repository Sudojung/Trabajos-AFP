Algoritmo InsertionSortVector
    Definir n, i, j Como Entero
    Definir key Como Entero
    
    Escribir "Ingrese la cantidad de números:"
    Leer n
    
    Definir vector Como Entero
    Dimension vector[n]
    
    Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        Escribir "Número para la posición ", i, ":"
        Leer vector[i]
    Fin Para
    
    // Insertion Sort
    Para i <- 1 Hasta n - 1 Con Paso 1 Hacer
        key <- vector[i]
        j <- i - 1
        
        
        Mientras j >= 0 Y vector[j] > key Hacer
            vector[j + 1] <- vector[j]
            j <- j - 1
        Fin Mientras
        
        vector[j + 1] <- key
    Fin Para
    
    Escribir "Vector ordenado:"
    Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        Escribir Sin Saltar vector[i], " "
    Fin Para
    Escribir ""
FinAlgoritmo
