Algoritmo SumaParesImpares

    Definir i Como Entero
    Definir sumaPares, sumaImpares Como Entero

    sumaPares <- 0
    sumaImpares <- 0

    Para i <- 1 Hasta 200 Con Paso 1 Hacer

        Si i MOD 2 = 0 Entonces

            sumaPares <- sumaPares + i

        SiNo

            sumaImpares <- sumaImpares + i

        FinSi

    FinPara

    Escribir "La suma de los números pares es: ", sumaPares
    Escribir "La suma de los números impares es: ", sumaImpares

FinAlgoritmo