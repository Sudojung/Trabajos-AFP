// Función para determinar si lo que ponemos es primo o no
Funcion es_primo <- VerificarPrimo(num)
    Definir es_primo Como Logico
    Definir i Como Entero
    es_primo <- Verdadero
    
    // El 0 y el 1 no son números primos
    Si num <= 1 Entonces
        es_primo <- Falso
    SiNo
        // Dividimos el número por todos los anteriores para ver si tiene divisores
        Para i <- 2 Hasta num - 1 Con Paso 1 Hacer
            Si num MOD i == 0 Entonces
                es_primo <- Falso
            FinSi
        FinPara
    FinSi
FinFuncion

Algoritmo FibonacciPrimo
    Definir numero_ingresado, a, b, c, siguiente Como Entero
    
    Escribir "Ingrese un numero natural primo:"
    Leer numero_ingresado
    
    // CASO peculiar investigado: Validamos que el usuario realmente ingresó un número primo
    Si No VerificarPrimo(numero_ingresado) Entonces
        Escribir "Error: El numero ingresado no es primo. Intente con 2, 3, 5, 13, etc."
    SiNo
        a <- 1
        b <- 1
        
        // Generamos la secuencia de Fibonacci hasta alcanzar o pasarnos del numero
        Mientras b < numero_ingresado Hacer
            c <- a + b
            a <- b
            b <- c
        FinMientras
        
        // Si al detenernos 'b' es igual al numero ingresado, es porque sí pertenece a la secuencia
        Si b == numero_ingresado Entonces
            siguiente <- a + b
            Escribir "¡enhora buena mi kin hallaste  un numero Fibonacci!"
            Escribir "La terna es: ", a, ", ", b, ", ", siguiente
        SiNo
            Escribir "El numero ", numero_ingresado, " es primo, pero NO es un numero Fibonacci."
        FinSi
    FinSi
FinAlgoritmo