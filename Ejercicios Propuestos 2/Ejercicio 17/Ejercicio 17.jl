# Ingresamos los coeficientes
println("Ingrese el valor de a:")
a = parse(Float64, readline())

println("Ingrese el valor de b:")
b = parse(Float64, readline())

println("Ingrese el valor de c:")
c = parse(Float64, readline())

println("Ingrese el valor de d:")
d = parse(Float64, readline())

println("-----------------------------------------")

# Evaluamos la función para x desde 8 hasta 100
for x in 8:100
    global resultado
    
    resultado = a * x^4 - b * x^3 + 2 * c * x^2 - x + d
    
    println("f(", x, ") = ", resultado)
end
