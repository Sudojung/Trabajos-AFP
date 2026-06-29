print("Ingrese la cantidad de elementos: ")
cantidad = parse(Int, readline())

vectorNumeros = Vector{Float64}(undef, cantidad)

for i in 0:(cantidad - 1)
    print("Valor para la posición ", i, ": ")
    # Guardamos en i + 1 para adaptarlo a Julia
    vectorNumeros[i + 1] = parse(Float64, readline())
end


# La posición 0  equivale a la posición 1 en Julia
maximo = vectorNumeros[1]
minimo = vectorNumeros[1]

for i in 1:(cantidad - 1)
    if vectorNumeros[i + 1] > maximo
        global maximo = vectorNumeros[i + 1]
    end
    
    if vectorNumeros[i + 1] < minimo
        global minimo = vectorNumeros[i + 1]
    end
end

println("El elemento MÁXIMO del vector es: ", maximo)
println("El elementos MÍNIMO del vector es: ", minimo)