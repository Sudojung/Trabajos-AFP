print("Ingrese el ángulo en radianes (entre -3.1416 y 3.1416): ")
angulo = parse(Float64, readline())

if angulo < -3.1416 || angulo > 3.1416
    println("Error: Ángulo fuera del rango permitido.")
else
    seno_acumulado = angulo
    termino = angulo
    signo = 1
    factorial = 1.0
    
    for i in 1:4
        global signo *= -1
        exponente = 2 * i + 1
        global factorial *= (2 * i) * (2 * i + 1)
        global termino = (angulo ^ exponente) / factorial
        global seno_acumulado += signo * termino
    end
    println("Seno aproximado de (", angulo, ") = ", seno_acumulado)
end
