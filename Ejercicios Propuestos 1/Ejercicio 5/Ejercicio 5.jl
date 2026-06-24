total_leidos = 0
bisiestos_encontrados = 0

while total_leidos < 10 && bisiestos_encontrados < 3
    print("Ingrese un año: ")
    año = parse(Int, readline())
    global total_leidos += 1
    
    if (año % 4 == 0 && año % 100 != 0) || (año % 400 == 0)
        println(año, " es un año BISIESTO.")
        global bisiestos_encontrados += 1
    else
        println(año, " NO es un año bisiesto.")
    end
    println("--- continuemos ----")
end

println("--- Proceso terminado ---")
println("Total de años revisados: ", total_leidos)
println("Total de bisiestos encontrados: ", bisiestos_encontrados)
