print("Ingrese el tamaño del vector: ")
n = parse(Int, readline())

println("Pediendo memoria para el vector (Simulando new)")
vector = Vector{Int}(undef, n) 

println("VECTOR: ")
for i in 0:(n - 1)
    print("Valor para la posición ", i, ": ")
    vector[i + 1] = parse(Int, readline())
end

println("\nVector dinámico en memoria:")
for i in 0:(n - 1)
    print(vector[i + 1], " ")
end
println("\n")

println("Liberando la memoria del vector (Simulando delete)")

# En Julia, para liberar el "apuntador", vaciamos el vector 
empty!(vector) 
vector = nothing 

println("¡Memoria liberada!")