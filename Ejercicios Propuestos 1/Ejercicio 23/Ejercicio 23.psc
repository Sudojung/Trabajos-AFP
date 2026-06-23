Algoritmo multiplicacion_por_11

    Definir N_original, N, resultado, posicion, lleva Como Entero
    Definir digito_actual, digito_anterior, suma, nuevo_digito Como Entero

    Escribir "Ingrese un numero entero positivo para multiplicar por 11: "
    Leer N_original

    Si N_original >= 0 Entonces

        N <- N_original
        resultado <- 0
        posicion <- 1
        lleva <- 0
        digito_anterior <- 0

        Mientras N > 0 O digito_anterior > 0 O lleva > 0 Hacer

            digito_actual <- N Mod 10

            suma <- digito_actual + digito_anterior + lleva

            nuevo_digito <- suma Mod 10
            lleva <- Trunc(suma / 10)

            resultado <- resultado + (nuevo_digito * posicion)

            posicion <- posicion * 10

            digito_anterior <- digito_actual

            N <- Trunc(N / 10)

        FinMientras

        Escribir "El producto de ", N_original, " x 11 es: ", resultado

    Sino

        Escribir "Error: El numero ingresado debe ser positivo."

    FinSi

FinAlgoritmo
