Funcion resultado <- CalcularFactorial (n)
    Definir resultado Como Real
    Definir i Como Entero
    
    resultado <- 1 // El factorial de 0 es 1
    
    Si n > 0 Entonces
        Para i <- 1 Hasta n Hacer
            resultado <- resultado * i
        Fin Para
    Fin Si
FinFuncion

Algoritmo FactorialPrincipal
    Definir numero Como Entero
    Definir facto Como Real 
    
    Escribir "Ingrese un número entero positivo:"
    Leer numero
    
    Si numero >= 0 Entonces
        facto <- CalcularFactorial(numero)
        Escribir "El factorial de ", numero, " es: ", facto
    Sino
        Escribir "El factorial no existe para números negativos."
    Fin Si
FinAlgoritmo
