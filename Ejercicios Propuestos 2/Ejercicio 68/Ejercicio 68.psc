Algoritmo CalcularEulerDinamico
    Definir n, i Como Entero
    Definir e, fact Como Real
    
    Escribir "Introduce el número de términos (n) para aproximar e:"
    Leer n
    
    // Variables
    e <- 1        // El primer término (1/ 0! = 1)
    fact <- 1     // Guarda el valor del factorial acumuladonse 
    
    Para i <- 1 Hasta n - 1 Hacer
        fact <- fact * i
        
        e <- e + (1 / fact)
    FinPara
    
    Escribir "El valor aproximado de e con ", n, " términos es: ", e
    
FinAlgoritmo
