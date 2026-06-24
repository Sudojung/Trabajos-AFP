Algoritmo InterseccionIntervalos

    Definir a, b, c, d Como Real
    Definir inicio, fin Como Real

    Escribir "Ingrese el extremo inferior del primer intervalo:"
    Leer a

    Escribir "Ingrese el extremo superior del primer intervalo:"
    Leer b

    Escribir "Ingrese el extremo inferior del segundo intervalo:"
    Leer c

    Escribir "Ingrese el extremo superior del segundo intervalo:"
    Leer d

    Si a > c Entonces
        inicio <- a
    SiNo
        inicio <- c
    FinSi

    Si b < d Entonces
        fin <- b
    SiNo
        fin <- d
    FinSi

    Si inicio <= fin Entonces

        Escribir "La intersección es: [", inicio, ", ", fin, "]"

    SiNo

        Escribir "Los intervalos no tienen intersección."

    FinSi

FinAlgoritmo