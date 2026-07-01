Funcion resultado <- CalcularMCD(num1, num2)
    Definir resto, resultado Como Entero
    
    // Convertimos a positivos en caso de que ingresen números negativos
    Si num1 < 0 Entonces
        num1 <- num1 * (-1)
    Fin Si
    Si num2 < 0 Entonces
        num2 <- num2 * (-1)
    Fin Si
    
    Mientras num2 <> 0 Hacer
        // Calculamos el residuo de la división
        resto <- num1 MOD num2
        
        // Desplazamos los valores: num1 toma el valor de num2, y num2 toma el residuo
        num1 <- num2
        num2 <- resto
    Fin Mientras
    
    // Cuando num2 llega a 0, el num1 contiene el MCD
    resultado <- num1
FinFuncion

Algoritmo EjercicioMCD
    Definir a, b, mcd Como Entero
    
    Escribir "Ingrese el primer número entero:"
    Leer a
    Escribir "Ingrese el segundo número entero:"
    Leer b
    
    // Llamada a la función
    mcd <- CalcularMCD(a, b)
    
    Escribir "----------------------"
    Escribir "El Máximo Común Divisor (MCD) de ", a, " y ", b, " es: ", mcd
FinAlgoritmo
