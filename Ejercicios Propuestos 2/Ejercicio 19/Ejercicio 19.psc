Algoritmo Divisor

    Definir primero, segundo Como Entero

    // Leemos los dos números
    Escribir "Ingrese el primer número:"
    Leer primero

    Escribir "Ingrese el segundo número:"
    Leer segundo

    // Calculamos el MCD mediante restas sucesivas
    Mientras primero <> segundo Hacer

        Si primero > segundo Entonces

            primero <- primero - segundo

        SiNo

            segundo <- segundo - primero

        FinSi

    FinMientras

    // Mostramos el resultado
    Escribir "El máximo común divisor es: ", primero

FinAlgoritmo