Funcion OrdenarVector(arr Por Referencia, n)
    Definir i, j, aux Como Entero
    Para i <- 0 Hasta n - 2 Con Paso 1 Hacer
        Para j <- 0 Hasta n - i - 2 Con Paso 1 Hacer
            Si arr[j] > arr[j+1] Entonces
                aux <- arr[j]
                arr[j] <- arr[j+1]
                arr[j+1] <- aux
            Fin Si
        Fin Para
    Fin Para
FinFuncion

Funcion ImprimirVector(arr, n)
    Definir i Como Entero
    Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        Escribir Sin Saltar arr[i], " "
    Fin Para
    Escribir ""
FinFuncion

Algoritmo OrdenamientoConFunciones
    Definir n, i Como Entero
    
    Escribir "Ingrese la cantidad de elementos:"
    Leer n
    
    Definir vector Como Entero
    Dimension vector[n]
    
    Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        Escribir "Valor para la posición ", i, ":"
        Leer vector[i]
    Fin Para
    
    Escribir "Vector original:"
    ImprimirVector(vector, n)
    
    // Se aplica la función que ordena
    OrdenarVector(vector, n)
    
    Escribir "Vector ordenado:"
    // Se aplica la función que imprime
    ImprimirVector(vector, n)
FinAlgoritmo
