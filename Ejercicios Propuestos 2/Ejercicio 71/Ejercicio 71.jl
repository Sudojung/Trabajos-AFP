function CalcularFactorial(numero)
    res = 1
    
    if numero > 0
        for i in 1:numero
            res = res * i
        end
    end
    return res
end


print("Ingrese N (número total de ensayos): ")
N = parse(Int, readline())

local porcentaje_p = 0
while true
    print("Ingrese la probabilidad de éxito, ejemplo:50 (en porcentaje 50=50%): ")
    global porcentaje_p = parse(Float64, readline())
    
    if porcentaje_p <= 0 || porcentaje_p > 100
        println("¡ERROR! El porcentaje debe ser mayor a 0 y máximo 100. Intente de nuevo.")
    end
    
    # Hasta Que porcentaje_p > 0 Y porcentaje_p <= 100
    if porcentaje_p > 0 && porcentaje_p <= 100
        break
    end
end

# Aquí el número de porcentaje se convierte en decimal, ejemplo 50% = 0.5 
p = porcentaje_p / 100
q = 1 - p

println("____________________________________")
println("K         |    Probabilidad P(K)")
println("____________________________________")

for K in 0:N
    
    factN = CalcularFactorial(N)
    factK = CalcularFactorial(K)
    factNK = CalcularFactorial(N - K)
    
    combinatoria = factN / (factK * factNK)
    
    prob = combinatoria * (p^K) * (q^(N - K))
    
    println(K, "       |    ", prob)
end