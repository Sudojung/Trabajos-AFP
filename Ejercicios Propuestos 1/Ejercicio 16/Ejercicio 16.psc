Algoritmo numero_perfecto

    Definir n, i, suma_divisores Como Entero

    Escribir "Introduce un número entero positivo:"
    Leer n

    suma_divisores <- 0

    Para i <- 1 Hasta n - 1 Hacer

        Si n MOD i = 0 Entonces
            suma_divisores <- suma_divisores + i
        Fin Si

    Fin Para

    Si suma_divisores = n Entonces
        Escribir "El número ", n, " es perfecto."
    Sino
        Escribir "El número ", n, " no es perfecto."
    Fin Si

FinAlgoritmo
