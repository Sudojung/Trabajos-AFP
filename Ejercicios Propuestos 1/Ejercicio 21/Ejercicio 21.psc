Algoritmo TrianguloFloyd

    Definir maximo_valor, numero_actual Como Entero
    Definir fila, columna Como Entero

    Escribir "Ingrese el valor máximo hasta el que desea llegar: "
    Leer maximo_valor

    Si maximo_valor > 0 Entonces

        numero_actual <- 1
        fila <- 1

        Mientras numero_actual <= maximo_valor Hacer

            Para columna <- 1 Hasta fila Hacer

                Si numero_actual <= maximo_valor Entonces
                    Escribir numero_actual, " " Sin Saltar
                    numero_actual <- numero_actual + 1
                FinSi

            FinPara

            Escribir ""
            fila <- fila + 1

        FinMientras

    Sino

        Escribir "Error: El valor debe ser mayor a cero."

    FinSi

FinAlgoritmo
