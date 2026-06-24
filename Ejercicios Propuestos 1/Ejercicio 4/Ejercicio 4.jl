print("Ingrese un número: ")
num = parse(Int, readline())

temp = num
cantidad = 0
suma_digitos = 0

while temp > 0
    digito = temp % 10
    global suma_digitos += digito
    global cantidad += 1
    global temp = div(temp, 10)
end

promedio = div(suma_digitos, cantidad)
println("Cantidad de dígitos: ", cantidad)
println("Promedio de dígitos (cantidad de rotaciones): ", promedio)

for i in 1:promedio
    divisor = 10 ^ (cantidad - 1)
    primer_digito = div(num, divisor)
    global num = (num % divisor) * 10 + primer_digito
    println(" Rotación ", i, ": ", num)
end
