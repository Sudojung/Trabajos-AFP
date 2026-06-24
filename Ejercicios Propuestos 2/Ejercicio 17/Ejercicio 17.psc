Algoritmo EvaluarFuncion

    Definir a, b, c, d Como Real
    Definir x Como Entero
    Definir fx Como Real

    Escribir "Ingrese el valor de a:"
    Leer a

    Escribir "Ingrese el valor de b:"
    Leer b

    Escribir "Ingrese el valor de c:"
    Leer c

    Escribir "Ingrese el valor de d:"
    Leer d

    Para x <- 8 Hasta 100 Con Paso 1 Hacer

        fx <- a*x^4 - b*x^3 + 2*c*x^2 - x + d

        Escribir "f(", x, ") = ", fx

    FinPara

FinAlgoritmo