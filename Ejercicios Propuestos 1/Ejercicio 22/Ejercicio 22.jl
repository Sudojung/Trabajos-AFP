println("   N    |   N^2    |  N^0.5  ")
println("-----------------------------")

for i in 0:100
    N = 1.0 + (i * 0.001)
    cuadrado = N * N
    potencia_raiz = N ^ 0.5
    println(N, "  |  ", cuadrado, "  |  ", potencia_raiz)
end
