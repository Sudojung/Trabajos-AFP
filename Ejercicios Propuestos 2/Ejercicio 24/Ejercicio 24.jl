# Función para determinar si lo que ponemos es primo o no
function VerificarPrimo(num)
    es_primo = true
    
    # El 0 y el 1 no son números primos
    if num <= 1
        es_primo = false
    else
        # Dividimos el número por todos los anteriores para ver si tiene divisores
        for i in 2:(num - 1)
            if num % i == 0
                es_primo = false
            end
        end
    end
    
    return es_primo
end

# Algoritmo principal FibonacciPrimo
println("Ingrese un numero natural primo:")
numero_ingresado = parse(Int, readline())

# Validamos que el usuario realmente ingresó un número primo
if !VerificarPrimo(numero_ingresado) # El signo ! equivale a la negación NO
    println("Error: El numero ingresado no es primo. Intente con 2, 3, 5, 13, etc.")
else
    a = 1
    b = 1
    
    # Generamos la secuencia de Fibonacci hasta alcanzar o pasarnos del numero
    while b < numero_ingresado
        global a, b, c
        c = a + b
        a = b
        b = c
    end
    
    # Si al detenernos b es igual al numero ingresado, pertenece a la secuencia
    if b == numero_ingresado
        siguiente = a + b
        println("¡en hora buena mi king, hallaste  un numero Fibonacci!")
        println("La terna es: ", a, ", ", b, ", ", siguiente)
    else
        println("El numero ", numero_ingresado, " es primo, pero NO es un numero Fibonacci.")
    end
end
