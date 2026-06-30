Funcion Mezclar (vector Por Referencia, izquierda Como Entero, medio Como Entero, derecha Como Entero)
    Definir n1, n2, i, j, k Como Entero
    n1 <- medio - izquierda + 1
    n2 <- derecha - medio
    
    Definir L, R Como Entero
    Dimension L[n1], R[n2]
    
    Para i <- 0 Hasta n1 - 1 Hacer
        L[i] <- vector[izquierda + i]
    Fin Para
    Para j <- 0 Hasta n2 - 1 Hacer
        R[j] <- vector[medio + 1 + j]
    Fin Para
    
    i <- 0
    j <- 0
    k <- izquierda
    
    Mientras i < n1 Y j < n2 Hacer
        Si L[i] <= R[j] Entonces
            vector[k] <- L[i]
            i <- i + 1
        Sino
            vector[k] <- R[j]
            j <- j + 1
        Fin Si
        k <- k + 1
    Fin Mientras
    
    Mientras i < n1 Hacer
        vector[k] <- L[i]
        i <- i + 1
        k <- k + 1
    Fin Mientras
    
    Mientras j < n2 Hacer
        vector[k] <- R[j]
        j <- j + 1
        k <- k + 1
    Fin Mientras
FinFuncion

Funcion AlgoritmoMergeSort (vector Por Referencia, izquierda Como Entero, derecha Como Entero)
    Definir medio Como Entero
    Si izquierda < derecha Entonces
        medio <- izquierda + (derecha - izquierda) / 2
        
        AlgoritmoMergeSort(vector, izquierda, medio)
        AlgoritmoMergeSort(vector, medio + 1, derecha)
        
        Mezclar(vector, izquierda, medio, derecha)
    Fin Si
FinFuncion

Funcion AlgoritmoBubbleSort (vector Por Referencia, n Como Entero)
    Definir i, j, aux Como Entero
    Para i <- 0 Hasta n - 2 Hacer
        Para j <- 0 Hasta n - i - 2 Hacer
            Si vector[j] > vector[j+1] Entonces
                aux <- vector[j]
                vector[j] <- vector[j+1]
                vector[j+1] <- aux
            Fin Si
        Fin Para
    Fin Para
FinFuncion

Algoritmo ComparacionOrdenamientos
    Definir n, i Como Entero
    Definir tiempo_inicio, tiempo_fin, t_bubble, t_merge Como Real
    
    Escribir "Ingrese la cantidad de elementos para la prueba:"
    Leer n
    
    Definir vectorA, vectorB Como Entero
    Dimension vectorA[n], vectorB[n]
    
    Para i <- 0 Hasta n - 1 Hacer
        Escribir "Ingrese valor para la posición ", i, ":"
        Leer vectorA[i]
        vectorB[i] <- vectorA[i]
    Fin Para
    
    tiempo_inicio <- TomarTiempoActual()
    AlgoritmoBubbleSort(vectorA, n)
    tiempo_fin <- TomarTiempoActual()
    t_bubble <- tiempo_fin - tiempo_inicio
    
    tiempo_inicio <- TomarTiempoActual()
    AlgoritmoMergeSort(vectorB, 0, n - 1)
    tiempo_fin <- TomarTiempoActual()
    t_merge <- tiempo_fin - tiempo_inicio
    
    Escribir "--------------------------------------------------"
    Escribir "REPORTE DE EFICIENCIA (TIEMPO DE EJECUCIÓN):"
    Escribir "Tiempo estimado Bubble Sort: ", t_bubble, " segundos."
    Escribir "Tiempo estimado Merge Sort: ", t_merge, " segundos."
    Escribir "--------------------------------------------------"
    
    Si t_merge < t_bubble Entonces
        Escribir "Merge Sort fue más eficiente para ordenar este vector."
    Sino
        Escribir "Bubble Sort fue igual o más rápido (común en vectores muy pequeños o ya ordenados)."
    Fin Si
    
FinAlgoritmo
