Algoritmo DecimalABinario

    Definir numero, residuo Como Entero
    Definir binario Como Cadena

    // Validación de entrada
    Repetir

        Escribir "Ingrese un número decimal positivo:"
        Leer numero

        Si numero < 0 Entonces
            Escribir "Error: Debe ingresar un número positivo."
        FinSi

    Hasta Que numero >= 0

    binario <- ""

    // Caso especial para el cero
    Si numero = 0 Entonces

        binario <- "0"

    SiNo

        // Convertimos el número a binario
        Mientras numero > 0 Hacer

            residuo <- numero MOD 2
            binario <- ConvertirATexto(residuo) + binario
            numero <- Trunc(numero / 2)

        FinMientras

    FinSi

    Escribir "El número en binario es: ", binario

FinAlgoritmo