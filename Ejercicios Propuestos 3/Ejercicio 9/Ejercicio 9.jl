print("Ingrese el tamaño (n) de las matrices cuadradas: ")
n = parse(Int, readline())

matrizA = Matrix{Int}(undef, n, n)
matrizB = Matrix{Int}(undef, n, n)
resultado = Matrix{Int}(undef, n, n)

println(" ELEMENTOS DE LA MATRIZ (A) ")
for f in 0:(n - 1)
    for c in 0:(n - 1)
        print("Elemento A[", f, "][", c, "]: ")
        matrizA[f + 1, c + 1] = parse(Int, readline())
    end
end

println(" ELEMENTOS DE LA MATRIZ (B) : ")
for f in 0:(n - 1)
    for c in 0:(n - 1)
        print("Elemento B[", f, "][", c, "]: ")
        # TRUCO: Ajustamos con +1
        matrizB[f + 1, c + 1] = parse(Int, readline())
    end
end

# Proceso de la multiplicación de las matrices
for f in 0:(n - 1)
    for c in 0:(n - 1)
        resultado[f + 1, c + 1] = 0 
        for k in 0:(n - 1)
            resultado[f + 1, c + 1] = resultado[f + 1, c + 1] + (matrizA[f + 1, k + 1] * matrizB[k + 1, c + 1])
        end
    end
end

# como se ve la matriz A
println("")
println(" MATRIZ (A) : ")
for f in 0:(n - 1)
    for c in 0:(n - 1)
        print(matrizA[f + 1, c + 1], "  ")
    end
    println("")
end

# como se ve la matriz B
println("")
println(" MATRIZ (B) : ")
for f in 0:(n - 1)
    for c in 0:(n - 1)
        print(matrizB[f + 1, c + 1], "  ")
    end
    println("")
end

# Resultado
println("")
println(" MATRIZ (A x B) es igual a: ")
for f in 0:(n - 1)
    for c in 0:(n - 1)
        print(resultado[f + 1, c + 1], "  ")
    end
    println("")
end