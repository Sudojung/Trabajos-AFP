Algoritmo TablasDeMultiplicar
    Definir inicio, fin, tope, i, j, resultado Como Entero
    
	// Rangos de las tablas:
    Escribir "¿Desde qué tabla desea iniciar?"
    Leer inicio
    
    Escribir "¿Hasta qué tabla desea llegar?"
    Leer final
    
    // Límite de la multiplicación
    Escribir "¿Hasta qué número desea multiplicar en cada tabla?"
    Leer tope
    
    Escribir "--------------------------------------------------"
    
	//  proceso de generar las tablas 
    Para i <- inicio Hasta final Hacer
        Escribir "========================="
        Escribir "      TABLA DEL ", i
        Escribir "========================"
        
       // proceso de las multiplicaciones
        Para j <- 1 Hasta tope Hacer
            resultado <- i * j
            Escribir i, " x ", j, " = ", resultado
        FinPara
        
        Escribir "" 
    FinPara
    
FinAlgoritmo
