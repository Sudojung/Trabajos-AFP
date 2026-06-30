Funcion CrearMatrizDinamica (filas Como Entero, columnas Como Entero)
    Definir f, c Como Entero
    Definir nueva_matriz Como Entero
    
    Dimension nueva_matriz[filas, columnas]
    
    Para f <- 0 Hasta filas - 1 Hacer
        Para c <- 0 Hasta columnas - 1 Hacer
            nueva_matriz[f, c] <- 0
        Fin Para
    Fin Para
    
    Retornar nueva_matriz
FinFuncion

Funcion LiberarMatrizDinamica (matriz Por Referencia)
    Borrar matriz
FinFuncion

Algoritmo MatricesDinamicasDoblePuntero
    Definir n_filas, n_columnas, f, c Como Entero
    Definir mi_matriz Como Entero
    
    Escribir "Ingrese el número de filas de la matriz:"
    Leer n_filas
    Escribir "Ingrese el número de columnas de la matriz:"
    Leer n_columnas
    
    mi_matriz <- CrearMatrizDinamica(n_filas, n_columnas)
    
    Para f <- 0 Hasta n_filas - 1 Hacer
        Para c <- 0 Hasta n_columnas - 1 Hacer
            Escribir "Ingrese valor para [", f, "][", c, "]:"
            Leer mi_matriz[f, c]
        Fin Para
    Fin Para
    
    Escribir "--------------------------------------------------"
    Escribir "CONTENIDO DE LA MATRIZ DINÁMICA:"
    Para f <- 0 Hasta n_filas - 1 Hacer
        Para c <- 0 Hasta n_columnas - 1 Hacer
            Escribir Sin Saltar mi_matriz[f, c], " "
        Fin Para
        Escribir ""
    Fin Para
    Escribir "--------------------------------------------------"
    
    LiberarMatrizDinamica(mi_matriz)
    Escribir "Memoria dinámica liberada correctamente."
    
FinAlgoritmo
