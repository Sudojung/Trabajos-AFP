Algoritmo Fibonacci

    Definir n, m, a, b, siguiente, temp_intercambio Como Entero

    Escribir "Ingrese el límite inferior (n):"
    Leer n

    Escribir "Ingrese el límite superior (m):"
    Leer m

    Si n > m Entonces
        temp_intercambio <- n
        n <- m
        m <- temp_intercambio

        Escribir "Nota: Se acomodaron los límites automáticamente de menor a mayor."
    Fin Si

    a <- 0
    b <- 1

    Escribir "Los números de Fibonacci entre ", n, " y ", m, " son:"

    Mientras a <= m Hacer

        Si a >= n Entonces
            Escribir a, " " Sin Saltar    // Lo muestra en la misma línea
        Fin Si

        siguiente <- a + b    // Calculamos el nuevo término
        a <- b                // El antiguo toma el valor del actual
        b <- siguiente        // El actual toma el valor del nuevo

    Fin Mientras

    Escribir ""

FinAlgoritmo
