# Ejercicio 3:
Construya un programa que imprima la suma de los cuadrados de los 100 primeros números naturales. 


# Algoritmo

INICIO

    Definir n, i, suma Como Entero
    
    // Validación
    Repetir
        Escribir "Ingrese un número natural (mayor que 0):"
        Leer n
        Si n <= 0 Entonces
            Escribir "Error: debe ingresar un número natural positivo."
        FinSi
    Hasta Que n > 0
    
    suma <- 0
    
    Para i <- 1 Hasta n Hacer
        suma <- suma + (i * i)
    FinPara
    
    Escribir "La suma de los cuadrados de los ", n, " primeros números naturales es: ", suma

FIN


# Prueba de Escritorio:

Queremos calcular la suma de los cuadrados de los 4 primeros números naturales.
n = 4

| Acción  | Valores de variables | Resultados |
|----------|-----------------|---------------|
| Leer n | n = -5 | -5 no es mayor que 0 |
| Ingrese un número natural (mayor que 0)|
| Leer n | n = 4 | válido |
| -   | suma = 0 + 0      | 0  |
| i=1 | suma = 0 + (1*1)  | 1  |
| i=2 | suma = 1 + (2*2)  | 5  |
| i=3 | suma = 5 + (3*3)  | 14 |
| i=4 | suma = 14 + (4*4) | 30 |
