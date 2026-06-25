# Bucle que se repite y muestra error si no es natural
while true
    println("Introduzca un entero positivo: ")
    n = parse(Int, readline())
    
    # Si se escribe un número menor a 1 sale el error
    if n < 1
        println("¡Error! Debe ingresar un número natural.")
    else
        global n
        break # Hasta Que n >= 1
    end
end

factorial = 1
i = 1

# Bucle Mientras
while i <= n
    global factorial, i
    factorial = factorial * i
    i = i + 1
end

println("El factorial de ", n , " es: ", factorial)