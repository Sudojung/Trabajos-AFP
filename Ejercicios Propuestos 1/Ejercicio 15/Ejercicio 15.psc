Algoritmo Sucesion_Fibonacci_N

    Definir n, a, b, siguiente, i Como Entero

    Escribir "Ingrese la cantidad de términos que desea ver:"
    Leer n

    a <- 0
    b <- 1

    Escribir "Los primeros ", n, " términos son:"

    Para i <- 1 Hasta n Hacer

        Escribir a, " " Sin Saltar

        siguiente <- a + b

        a <- b
        b <- siguiente

    Fin Para

    Escribir ""

FinAlgoritmo
