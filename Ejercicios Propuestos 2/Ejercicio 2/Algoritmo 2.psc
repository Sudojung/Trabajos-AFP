Algoritmo Potencia_Fraccionaria
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
    Para i <- 1 Hasta num Con Paso 1 Hacer
        potencia <- potencia * base
    FinPara
    
    // Calculamos la raíz den-esima de potencia
    raizz <- potencia / den   // Valor inicial aproximado
    
    Para i <- 1 Hasta 50 Hacer   // 50 iteraciones para mejorar precisión
        raizz <- ( (den - 1) * raizz + (potencia / (raizz^(den-1))) ) / den
    FinPara
    
    resultado <- raizz
    
    Escribir "El resultado de ", base, " elevado a ", num, "/", den, " es: ", resultado
FinAlgoritmo
