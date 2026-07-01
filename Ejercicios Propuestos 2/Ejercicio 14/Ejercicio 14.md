# Ejercicio 14:

 Calcular la suma de los cuadrados de los 100 primeros números naturales.


# Algoritmo

Algoritmo SumaDeCuadradosConValidacion

    Definir limite, i, sumaCuadrados Como Entero
    
    sumaCuadrados <- 0
    
    Repetir
        Escribir "Ingrese hasta qué número natural desea sumar sus cuadrados:"
        Leer limite
        
        // Si se pone 0 o un número negativo, se activa el error
        Si limite < 1 Entonces
            Escribir "¡Error! El número debe ser un entero positivo mayor o igual a 1."
            Escribir "Por favor, intente de nuevo."
        FinSi
    Hasta Que limite >= 1
    
    
    Para i <- 1 Hasta limite Hacer
        sumaCuadrados <- sumaCuadrados + (i * i)
    FinPara
    
    // Resultado 
    Escribir "La suma de los cuadrados de los primeros ", limite, " números es: ", sumaCuadrados

FinAlgoritmo


# Prueba de Escritorio:

| i | i² | Cálculo | sumaCuadrados Anterior | Operación | sumaCuadrados Nuevo |
|---|-------|---------|------------------------|-----------|---------------------|
| 1 | 1×1 | **1** | 0 | 0 + 1 | **1** |
| 2 | 2×2 | **4** | 1 | 1 + 4 | **5** |
| 3 | 3×3 | **9** | 5 | 5 + 9 | **14** |
| 4 | 4×4 | **16** | 14 | 14 + 16 | **30** |
| 5 | 5×5 | **25** | 30 | 30 + 25 | **55** |
| 6 | 6×6 | **36** | 55 | 55 + 36 | **91** |
| 7 | 7×7 | **49** | 91 | 91 + 49 | **140** |
| 8 | 8×8 | **64** | 140 | 140 + 64 | **204** |
| 9 | 9×9 | **81** | 204 | 204 + 81 | **285** |
| 10 | 10×10 | **100** | 285 | 285 + 100 | **385** |
| 11 | 11×11 | **121** | 385 | 385 + 121 | **506** |
| 12 | 12×12 | **144** | 506 | 506 + 144 | **650** |
| ... | ... | ... | ... | ... | ... |
| 50 | 50×50 | **2500** | 40825 | 40825 + 2500 | **43325** |
| ... | ... | ... | ... | ... | ... |
| 99 | 99×99 | **9801** | 328349 | 328349 + 9801 | **338150** |
| 100 | 100×100 | **10000** | 338150 | 338150 + 10000 | **328350** |

**Resultado:**
- Suma de los cuadrados de los 100 primeros números = **1² + 2² + 3² + ... + 100² = 328350**
