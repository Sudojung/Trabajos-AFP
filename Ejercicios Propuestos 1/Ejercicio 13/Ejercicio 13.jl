suma = 0
producto = BigFloat(1.0)

for i in 20:2:400
    global suma += i
    global producto *= i
end

println("Resultados:")
println("La suma de números pares entre 20 y 400 es: ", suma)
println("El producto de números pares entre 20 y 400 es: ", producto)
