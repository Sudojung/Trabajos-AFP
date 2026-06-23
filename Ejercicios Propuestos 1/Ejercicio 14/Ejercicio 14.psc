Algoritmo Menor_Mayor_Y_Promedio

    Definir num, menor, mayor, cantidad, suma Como Entero
    Definir promedio Como Real

    suma <- 0
    cantidad <- 0

    Escribir "Ingrese números enteros positivos (Escriba 0 para terminar):"
    Leer num

    Mientras num <> 0 Hacer

        Si num < 0 Entonces
            Escribir "Error: Solo se permiten números positivos."

        Sino

            suma <- suma + num
            cantidad <- cantidad + 1

            Si cantidad = 1 Entonces
                menor <- num
                mayor <- num

            Sino

                Si num < menor Entonces
                    menor <- num
                FinSi

                Si num > mayor Entonces
                    mayor <- num
                FinSi

            FinSi

        FinSi

        Leer num

    FinMientras

    Si cantidad > 0 Entonces

        promedio <- suma / cantidad

        Escribir "El número MENOR es: ", menor
        Escribir "El número MAYOR es: ", mayor
        Escribir "El PROMEDIO es: ", promedio

    Sino

        Escribir "No se ingresaron números válidos."

    FinSi

FinAlgoritmo
