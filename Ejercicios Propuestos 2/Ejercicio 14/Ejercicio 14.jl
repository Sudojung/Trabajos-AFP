sumaCuadrados = 0

# Bucle de validación 
while true
    println("Ingrese hasta qué número natural desea sumar sus cuadrados:")
    limite = parse(Int, readline())
    
    # Si se pone 0 o un número negativo, se activa el error
    if limite < 1
        println("¡Error! El número debe ser un entero positivo mayor o igual a 1.")
        println("Por favor, intente de nuevo.")
        println("--------------------------------------------------")
    else
        global limite
        break # Hasta Que limite >= 1
    end
end

# Bucle Para
for i in 1:limite
    global sumaCuadrados
    sumaCuadrados = sumaCuadrados + (i * i)
end

# Resultado 
println("La suma de los cuadrados de los primeros ", limite, " números es: ", sumaCuadrados)