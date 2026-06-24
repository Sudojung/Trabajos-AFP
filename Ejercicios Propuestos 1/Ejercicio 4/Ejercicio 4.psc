Algoritmo Numero_rotado
    Definir num, temp, digito, cantidad Como Entero
    Definir suma_digitos, promedio, i, primer_digito, divisor Como Entero

    Escribir "Ingrese un número"
    Leer num

    temp <- num
    cantidad <- 0
    suma_digitos <- 0

    Mientras temp > 0 Hacer
        digito <- temp MOD 10
        suma_digitos <- suma_digitos + digito
        cantidad <- cantidad + 1
        temp <- Trunc(temp / 10)
    FinMientras

    promedio <- Trunc(suma_digitos / cantidad)

    Escribir "Cantidad de dígitos: ", cantidad
    Escribir "Promedio de dígitos (cantidad de rotaciones): ", promedio

    Para i <- 1 Hasta promedio Hacer
        divisor <- 10 ^ (cantidad - 1)

        // Sacamos el primer dígito de la izquierda
        primer_digito <- Trunc(num / divisor)

        // Rotamos el número hacia la izquierda
        num <- (num MOD divisor) * 10 + primer_digito

        Escribir "Rotación ", i, ": ", num
    FinPara
FinAlgoritmo
