Algoritmo DescifrarNumero

    Definir numero Como Cadena
    Definir d1,d2,d3,d4 Como Entero

    Escribir "Ingrese el número cifrado:"
    Leer numero

    d1 <- ConvertirANumero(SubCadena(numero,2,2))
    d2 <- ConvertirANumero(SubCadena(numero,3,3))
    d3 <- ConvertirANumero(SubCadena(numero,0,0))
    d4 <- ConvertirANumero(SubCadena(numero,1,1))

    d1 <- (d1 + 3) MOD 10
    d2 <- (d2 + 3) MOD 10
    d3 <- (d3 + 3) MOD 10
    d4 <- (d4 + 3) MOD 10

    Escribir "Número original: ",
             d1,d2,d3,d4

FinAlgoritmo