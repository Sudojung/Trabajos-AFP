Algoritmo tabla

    Definir i Como Entero
    Definir N, cuadrado, potencia_raiz Como Real

    Escribir "   N   |   N^2   |   N^0.5"
    Escribir "----------------------------"

    Para i <- 0 Hasta 100 Hacer

        N <- 1.0 + (i * 0.001)

        cuadrado <- N * N
        potencia_raiz <- RC(N)   // Raíz cuadrada de N

        Escribir N, " | ", cuadrado, " | ", potencia_raiz

    FinPara

FinAlgoritmo
