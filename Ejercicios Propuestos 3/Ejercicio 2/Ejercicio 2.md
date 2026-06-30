# Ejercicio 2:

Promedio de notas: Ingresar notas en un vector y calcular el promedio. 

# Algoritmo:

INICIO

    Definir cantidad, i Como Entero
    Definir suma, promedio Como Real 
    Definir vectorNotas Como Real
    
    suma <- 0
	
    Escribir "Ingrese la cantidad de notas a registrar:"
    Leer cantidad
    
    Dimension vectorNotas[cantidad]
    
    Escribir "Ingrese las notas una por una:"
    
    Para i <- 0 Hasta cantidad - 1  Hacer
        Escribir "Ingrese la nota para la posición ", i, ":"
        Leer vectorNotas[i]
        
        suma <- suma + vectorNotas[i]
    Fin Para
    
    promedio <- suma / cantidad
    
    Escribir "El promedio de las notas es: ", promedio 
FIN

# Prueba de Escritorio:

Datos de entrada
- cantidad = 4  
- vectorNotas = 15, 12, 18, 10


|   i   | Operación           | Resultados |
|-------|--------------------------------|------------------|
| i=0   | suma = 0 + 15                  | suma = 15        |
| i=1   | suma = 15 + 12                 | suma = 27        |
| i=2   | suma = 27 + 18                 | suma = 45        |
| i=3   | suma = 45 + 10                 | suma = 55        |
| promedio | 55 / 4 | 13.75| 


