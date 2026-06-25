Algoritmo CifrarDatos
    Definir num, d1, d2, d3, d4, temp Como Entero
    
    Escribir "Ingrese el dato original (entero de 4 dígitos):"
    Leer num
    
    d1 <- Trunc(num / 1000)           // d1 se queda con 1
    d2 <- Trunc((num MOD 1000) / 100) // d2 se queda con 2
    d3 <- Trunc((num MOD 100) / 10)   // d3 se queda con 3
    d4 <- num MOD 10                  // d4 se queda con 4
    
    // Sustituir cada dígito por (dígito + 7) MOD 10
    d1 <- (d1 + 7) MOD 10
    d2 <- (d2 + 7) MOD 10
    d3 <- (d3 + 7) MOD 10
    d4 <- (d4 + 7) MOD 10
    
    // Intercambiar el 1ro (d1) con el 3ro (d3) usando 'temp'
    temp <- d1
    d1 <- d3
    d3 <- temp
    
    //  Intercambiar el 2do (d2) con el 4to (d4)
    temp <- d2
    d2 <- d4
    d4 <- temp
    
    //  Imprimir resultado pegando los dígitos
    Escribir "El número cifrado seguro es: ", d1, d2, d3, d4
FinAlgoritmo
