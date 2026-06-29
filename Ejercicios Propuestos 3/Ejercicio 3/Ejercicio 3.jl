print("Ingrese el tamaño (n) de la matriz cuadrada: ")
n = parse(Int, readline())

matriz = Matrix{Int}(undef, n, n)

# Generamos la matriz identidad
for f in 0:(n - 1)
    for c in 0:(n - 1)
        if f == c
            # sumamos 1 a "f" y a "c" para los índices de Julia (que empiezan en 1)
            matriz[f + 1, c + 1] = 1 # Es la diagonal principal
        else
            matriz[f + 1, c + 1] = 0 # Son las demás posiciones
        end
    end
end

# Mostramos como es la matriz 
for f in 0:(n - 1)
    for c in 0:(n - 1)
        print(matriz[f + 1, c + 1], "  ")
    end
    println("") 
end