Funcion OrdenarParesImpares(arr Por Referencia, n)
    Definir i, j, aux Como Entero
    Definir debeIntercambiar Como Logico
    
    // Usamos la estructura de Bubble Sort
    Para i <- 0 Hasta n - 2 Hacer
        Para j <- 0 Hasta n - i - 2 Hacer
            debeIntercambiar <- Falso
            
            // Si el izquierdo es impar y el derecho es par -> Intercambiar
            Si (arr[j] MOD 2 <> 0) Y (arr[j+1] MOD 2 = 0) Entonces
                debeIntercambiar <- Verdadero
            Fin Si
            
            //  Si ambos son pares -> Ordenar ascendente
            Si (arr[j] MOD 2 = 0) Y (arr[j+1] MOD 2 = 0) Entonces
                Si arr[j] > arr[j+1] Entonces
                    debeIntercambiar <- Verdadero
                Fin Si
            Fin Si
            
            // Si ambos son impares -> Ordenar descendente
            Si (arr[j] MOD 2 <> 0) Y (arr[j+1] MOD 2 <> 0) Entonces
                Si arr[j] < arr[j+1] Entonces
                    debeIntercambiar <- Verdadero
                Fin Si
            Fin Si
            
            // Si alguna regla se cumple, realizamos el intercambio
            Si debeIntercambiar Entonces
                aux <- arr[j]
                arr[j] <- arr[j+1]
                arr[j+1] <- aux
            Fin Si
        Fin Para
    Fin Para
FinFuncion

Algoritmo EjercicioParesImpares
    Definir n, i Como Entero
    
   
    Escribir "Ingrese la cantidad de elementos que tendra el vector:"
    Leer n
    
    Definir vector Como Entero
    Dimension vector[n]
    
    
    Escribir "--- Ingrese los números del vector ---"
    Para i <- 0 Hasta n - 1 Hacer
        Escribir "Valor para la posición ", i, ":"
        Leer vector[i]
    Fin Para
    
    Escribir ""
    Escribir "Vector original:"
    Para i <- 0 Hasta n - 1 Hacer
        Escribir Sin Saltar vector[i], " "
    Fin Para
    Escribir ""
    Escribir "----------------------"
    
    // Se aplica la función de ordenamiento
    OrdenarParesImpares(vector, n)
    
    Escribir "Vector final ordenado:"
    Para i <- 0 Hasta n - 1 Hacer
        Escribir Sin Saltar vector[i], " "
    Fin Para
    Escribir ""
FinAlgoritmo
