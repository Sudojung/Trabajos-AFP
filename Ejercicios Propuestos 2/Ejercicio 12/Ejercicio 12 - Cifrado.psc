Algoritmo CifrarNumero

    Definir numero Como Cadena
    Definir i Como Entero
    Definir digitos Como Entero
    Dimension digitos[4]

    Escribir "Ingrese un número de 4 dígitos:"
    Leer numero

    // Convertir y cifrar cada dígito
    Para i <- 0 Hasta 3 Hacer
        digitos[i] <- (ConvertirANumero(SubCadena(numero,i,i)) + 7) MOD 10
    FinPara

    // Intercambiar posiciones
    Escribir "Número cifrado: ", digitos[2], digitos[3], digitos[0], digitos[1]

FinAlgoritmo
