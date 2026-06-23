// Creamos la función matemática RANDOM

Funcion decimal_azar <- random
    Definir decimal_azar Como Real

    decimal_azar <- Azar(1000) / 1000
FinFuncion

Funcion entero_puro <- parte_entera(numero_real)
    Definir entero_puro Como Entero

    entero_puro <- Trunc(numero_real)
FinFuncion

Algoritmo Adivinar_numero

    Definir MAXIMO, numero_secreto, intento, contador Como Entero
    Definir x Como Real

    MAXIMO <- 100

    x <- random
    numero_secreto <- parte_entera(x * MAXIMO) + 1    // Transforma el decimal en un entero entre 1 y 100

    contador <- 0
    intento <- 0

    ESCRIBIR "Adivina el número entre 1 y 100"

    MIENTRAS intento <> numero_secreto HACER

        ESCRIBIR "Introduce tu número:"
        LEER intento

        contador <- contador + 1

        SI intento < numero_secreto ENTONCES
            ESCRIBIR "El número es mayor"
        SINO
            SI intento > numero_secreto ENTONCES
                ESCRIBIR "El número es menor"
            FIN SI
        FIN SI

    FIN MIENTRAS

    ESCRIBIR "Acertaste!"
    ESCRIBIR "Número de intentos: ", contador

FinAlgoritmo
