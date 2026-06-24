Algoritmo Aproximacion_Seno
    Definir angulo, seno_acumulado, termino, signo, factorial Como Real
    Definir i, exponente Como Entero

    Escribir "Ingrese el ángulo en radianes (entre -3.1416 y 3.1416):"
    Leer angulo

    Si angulo < -3.1416 O angulo > 3.1416 Entonces
        Escribir "Error: Ángulo fuera del rango permitido."
    Sino
        seno_acumulado <- angulo
        termino <- angulo
        signo <- 1
        factorial <- 1
        exponente <- 1

        Para i <- 1 Hasta 4 Hacer
            signo <- signo * (-1)
            exponente <- 2 * i + 1

            factorial <- factorial * (2 * i) * (2 * i + 1)

            termino <- (angulo ^ exponente) / factorial

            seno_acumulado <- seno_acumulado + (signo * termino)
        FinPara

        Escribir "Seno aproximado de (", angulo, ") = ", seno_acumulado
    FinSi
FinAlgoritmo
