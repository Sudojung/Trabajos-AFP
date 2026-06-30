print("Ingrese el número de filas (n): ")
n = parse(Int, readline())
print("Ingrese el número de columnas (m): ")
m = parse(Int, readline())


Elemento = Matrix{Int}(undef, n, m)
transpuesta = Matrix{Int}(undef, m, n)

# Elementos de la matriz
for f in 0:(n - 1)
    for c in 0:(m - 1)
        print("Valor para la posición [", f, "][", c, "]: ")
        # TRUCO: Ajustamos los índices con +1 para la memoria de Julia
        Elemento[f + 1, c + 1] = parse(Int, readline())
    end
end

# Como se vería la matriz
println("MATRIZ:")
for f in 0:(n - 1)
    for c in 0:(m - 1)
        print(Elemento[f + 1, c + 1], "  ")
    end
    println("")
end

# EL proceso de la matriz transpuesta
for f in 0:(n - 1)
    for c in 0:(m - 1)
        transpuesta[c + 1, f + 1] = Elemento[f + 1, c + 1]
    end
end

println("MATRIZ TRANSPUESTA:")

for f in 0:(m - 1) 
    for c in 0:(n - 1)
        print(transpuesta[f + 1, c + 1], "  ")
    end
    println("")
end