Funcion Intercambiar (a Por Referencia, b Por Referencia)
    Definir aux Como Entero
    
    aux <- a
    a <- b
    b <- aux
FinFuncion

Algoritmo IntercambioValores
    Definir num1, num2 Como Entero
    
    Escribir "Ingrese el primer número:"
    Leer num1
    Escribir "Ingrese el segundo número:"
    Leer num2
    
    Escribir " ANTES (Valores iniciales): num1 = ", num1, " ; num2 = ", num2
    
    // 	Aplicamos la función
    Intercambiar(num1, num2)
    
    Escribir " AHORA (Valores intercambiados): num1 = ", num1, " ; num2 = ", num2
FinAlgoritmo
