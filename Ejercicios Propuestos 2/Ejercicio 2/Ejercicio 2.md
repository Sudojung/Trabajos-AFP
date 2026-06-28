# Ejercicio 2:
Realizar un algoritmo que calcule la potencia de un número real elevado a un número real dado su 
numerador y denominador , sin utilizar funciones ni procedimientos. 

# Algoritmo:

INICIO

    Definir base, num, den, potencia, resultado, raizz Como Real
    Definir i Como Entero
    
    Escribir "Ingrese la base (número real): "
    Leer base
    
    Escribir "Ingrese el numerador del exponente: "
    Leer num
    
    Escribir "Ingrese el denominador del exponente: "
    Leer den
    
    // Calculamos base^num
    potencia <- 1
    Para i <- 1 Hasta num Hacer
        potencia <- potencia * base
    FinPara
    
    // Calculamos la raíz den-esima de potencia
    raizz <- potencia / den   // Valor inicial aproximado
    
    Para i <- 1 Hasta 50 Hacer   // 50 iteraciones para mejorar precisión
        raizz <- ( (den - 1) * raizz + (potencia / (raizz^(den-1))) ) / den
    FinPara
    
    resultado <- raizz
    
    Escribir "El resultado de ", base, " elevado a ", num, "/", den, " es: ", resultado
    
FIN


# Prueba de Escritorio:

Queremos calcular : 9^(1/2) 

Entonces las variables son:
- base = 9
- num = 1
- den = 2

| Procedimiento | Resultados |
|----------------------|--------------------|
| potencia = 1 | — |
| potencia = 1 * 9 | potencia = 9 |
| raizz = potencia / den = 9 / 2 | raizz = 4.5 |
| Bucle de 50 iteraciones |
| raizz = ((2-1)*4.5 + (9 / (4.5^(2-1)))) / 2 = (4.5 + 2) / 2 | raizz = 3.25 |
| raizz = ((2-1)*3.25 + (9 / (3.25))) / 2 = (3.25 + 2.769) / 2 | raizz = 3.0096 |
| raizz ≈ 3.000015 | — |
| ...| raizz = 3.0 |
| resultado = raizz | resultado = 3.0 |
| — | "El resultado de 9 elevado a 1/2 es: 3.0" |



