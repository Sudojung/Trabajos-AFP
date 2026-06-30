print("Ingrese la cantidad de números: ")
n = parse(Int, readline())

vector = Vector{Int}(undef, n)

for i in 0:(n - 1)
    print("Número para la posición ", i, ": ")
    vector[i + 1] = parse(Int, readline())
end

# Insertion Sort
for i in 1:(n - 1)
    key = vector[i + 1]
    
    local j = i - 1

    while j >= 0 && vector[j + 1] > key
        vector[(j + 1) + 1] = vector[j + 1]
        j = j - 1 
    end
    
    vector[(j + 1) + 1] = key
end

println("Vector ordenado:")
for i in 0:(n - 1)
    print(vector[i + 1], " ")
end
println("")