Algoritmo CifrarNumero

    Definir numero Como Cadena
    Definir d1,d2,d3,d4 Como Entero

    Escribir "Ingrese un número de 4 dígitos:"
    Leer numero

    d1 <- (ConvertirANumero(SubCadena(numero,0,0)) + 7) MOD 10
    d2 <- (ConvertirANumero(SubCadena(numero,1,1)) + 7) MOD 10
    d3 <- (ConvertirANumero(SubCadena(numero,2,2)) + 7) MOD 10
    d4 <- (ConvertirANumero(SubCadena(numero,3,3)) + 7) MOD 10

    Escribir "Número cifrado: ",
             d3,d4,d1,d2

FinAlgoritmo