print("Ingresa el primer número para su tabla: ")
num1 = parse(Int, readline())
print("Ingresa el segundo número para su tabla: ")
num2 = parse(Int, readline())

println("TABLA DEL ", num1, " (Del 1 al 10)")
for i in 1:10
    resultado1 = num1 * i
    println(num1, " x ", i, " = ", resultado1)
end

println()
println("TABLA DEL ", num2, " (Del 1 al 10)")
for i in 1:10
    resultado2 = num2 * i
    println(num2, " x ", i, " = ", resultado2)
end
