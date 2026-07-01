# Ejercicio 16:

Determine el numero de dígitos  de un numero positivo N  ingresado por teclado. 
Ejemplo:    999 tiene tres dígitos                            1222 tiene 4 dígitos.


# Algoritmo:

Algoritmo ContarDigitos

    Definir N, temp, digitos Como Entero

    Repetir
        Escribir "Ingrese un número natural:"
        Leer N
        
        Si N < 1 Entonces
            Escribir "¡Error! Debe ingresar un número natural (mayor o igual a 1)."
            Escribir "Por favor, intente de nuevo."
            Escribir "--------------------------------------------------"
        FinSi
    Hasta Que N >= 1

    digitos <- 0
    temp <- N // Guardamos N en una variable temporal para no borrar el original
    
    Mientras temp > 0 Hacer
        // Dividimos entre 10 y Trunc corta los decimales
        temp <- Trunc(temp / 10) 
        
        // Sumamos 1 al contador por cada corte que hacemos
        digitos <- digitos + 1   
    FinMientras
    

    Escribir "El número ", N, " tiene ", digitos, " dígito(s)."
    
FinAlgoritmo


# Prueba de Escritorio:

N = 999

| temp | digitos | Operación Realizada | Condición | Salida |
|------|---------|---------------------|-----------|--------|
| **999** | **0** | temp ← 999, digitos ← 0 | - | - |
| 999 | 0 | - | 999 > 0  | Entra al ciclo |
| **99** | 0 | temp ← Trunc(999 / 10) = **99** | - | - |
| 99 | **1** | digitos ← 0 + 1 = **1** | - | - |
| 99 | 1 | - | 99 > 0  | Entra al ciclo |
| **9** | 1 | temp ← Trunc(99 / 10) = **9** | - | - |
| 9 | **2** | digitos ← 1 + 1 = **2** | - | - |
| 9 | 2 | - | 9 > 0  | Entra al ciclo |
| **0** | 2 | temp ← Trunc(9 / 10) = **0** | - | - |
| 0 | **3** | digitos ← 2 + 1 = **3** | - | - |
| - | 3 | - | - | **El número 999 tiene 3 dígito(s).** |
