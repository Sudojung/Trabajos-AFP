function random()
    return rand()
end

function parte_entera(numero_real)
    return trunc(Int, numero_real)
end

MAXIMO = 100
x = random()
numero_secret = parte_entera(x * MAXIMO) + 1

contador = 0
intento = 0

println("Adivina el número entre 1 y 100")

while intento != numero_secret
    print("Introduce tu número: ")
    global intento = parse(Int, readline())
    global contador += 1
    
    if intento < numero_secret
        println("El número es mayor")
    elseif intento > numero_secret
        println("El número es menor")
    end
end

println("Acertaste!")
println("Número de intentos: ", contador)
