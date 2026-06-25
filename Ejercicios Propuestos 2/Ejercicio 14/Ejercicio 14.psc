Algoritmo SumaDeCuadradosConValidacion
    Definir limite, i, sumaCuadrados Como Entero
    
    sumaCuadrados <- 0
    
    Repetir
        Escribir "Ingrese hasta qué número natural desea sumar sus cuadrados:"
        Leer limite
        
        // Si se pone 0 o un número negativo, se activa el error
        Si limite < 1 Entonces
            Escribir "¡Error! El número debe ser un entero positivo mayor o igual a 1."
            Escribir "Por favor, intente de nuevo."
            Escribir "--------------------------------------------------"
        FinSi
    Hasta Que limite >= 1
    
    
    Para i <- 1 Hasta limite Hacer
        sumaCuadrados <- sumaCuadrados + (i * i)
    FinPara
    
    // Resultado 
    Escribir "La suma de los cuadrados de los primeros ", limite, " números es: ", sumaCuadrados

FinAlgoritmo
