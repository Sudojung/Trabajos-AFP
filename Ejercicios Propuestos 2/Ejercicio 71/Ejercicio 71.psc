SubProceso res <- CalcularFactorial(numero)
    Definir res Como Real
    Definir i Como Entero
    res <- 1
    Si numero > 0 Entonces
        Para i <- 1 Hasta numero Hacer
            res <- res * i
        FinPara
    FinSi
FinSubProceso

Algoritmo Probabilidad_Binomial
    Definir N, K Como Entero
    Definir porcentaje_p, p, q, combinatoria, prob Como Real
    Definir factN, factK, factNK Como Real
    
    Escribir "Ingrese N (número total de ensayos):"
    Leer N

    Repetir
        Escribir "Ingrese la probabilidad de éxito, ejemplo:50 (en porcentaje 50=50%):"
        Leer porcentaje_p
        
        Si porcentaje_p <= 0 O porcentaje_p > 100 Entonces
            Escribir "¡ERROR! El porcentaje debe ser mayor a 0 y máximo 100. Intente de nuevo."
        FinSi
    Hasta Que porcentaje_p > 0 Y porcentaje_p <= 100
    
    // Aquí el el número de porcentaje se convierte en decimal, ejemplo 50% = 0.5 
    p <- porcentaje_p / 100

    q <- 1 - p
    
	Escribir "____________________________________"
    Escribir "K         |    Probabilidad P(K)"
    Escribir "------------------------------------"
    
    Para K <- 0 Hasta N Hacer
        
        factN <- CalcularFactorial(N)
        factK <- CalcularFactorial(K)
        factNK <- CalcularFactorial(N - K)
        
        combinatoria <- factN / (factK * factNK)
        
        prob <- combinatoria * (p^K) * (q^(N - K))
        
        Escribir K, "       |   ", prob
        
    FinPara
    
FinAlgoritmo
