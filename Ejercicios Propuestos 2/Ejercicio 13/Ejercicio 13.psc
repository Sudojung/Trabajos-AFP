Algoritmo SumaParesImpares

    Definir i Como Entero
    Definir sumaPares, sumaImpares Como Entero

    // Inicializamos las variables acumuladoras
    sumaPares <- 0
    sumaImpares <- 0

    // Recorremos los números del 1 al 200
    Para i <- 1 Hasta 200 Con Paso 1 Hacer

        // Verificamos si el número es par o impar
        Si i MOD 2 = 0 Entonces

            sumaPares <- sumaPares + i

        SiNo

            sumaImpares <- sumaImpares + i

        FinSi

    FinPara

    // Mostramos los resultados
    Escribir "La suma de los números pares es: ", sumaPares
    Escribir "La suma de los números impares es: ", sumaImpares

FinAlgoritmo
