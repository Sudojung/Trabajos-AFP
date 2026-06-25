# El programa elige un número al azar entre 1 y 10 automáticamente
maxInt = rand(1:10)
intentos = 0    

println("¡El sistema ha asignado el límite de intentos!")
println("Para esta programa tienes un máximo de: ", maxInt, " intentos.")
println("--------------------------------------------------")

println("Ingrese el DÍA de la primera fecha (Escriba 0 para salir):")
dia1 = parse(Int, readline())

# El ciclo se repite MIENTRAS el día 1 no sea cero Y intentos sea menor que maxInt
while dia1 != 0 && intentos < maxInt
    global dia1, intentos  # Indicamos que modificaremos estas variables dentro del bucle
    
    println("Ingrese el MES de la primera fecha:")
    mes1 = parse(Int, readline())
    println("Ingrese el AÑO de la primera fecha:")
    año1 = parse(Int, readline())
    
    # Pedimos la segunda fecha completa
    println("--- Segunda Fecha ---")
    println("Ingrese el DÍA de la segunda fecha:")
    dia2 = parse(Int, readline())
    println("Ingrese el MES de la segunda fecha:")
    mes2 = parse(Int, readline())
    println("Ingrese el AÑO de la segunda fecha:")
    año2 = parse(Int, readline())
    
    println("--------------------------------------------------")
    
    # Comparación de las fechas
    if año1 < año2
        println("-> La primera fecha (", dia1, "/", mes1, "/", año1, ") es anterior.")
    else
        if año1 > año2
            println("-> La segunda fecha (", dia2, "/", mes2, "/", año2, ") es anterior.")
        else
            if mes1 < mes2
                println("-> La primera fecha es anterior.")
            else
                if mes1 > mes2
                    println("-> La segunda fecha es anterior.")
                else
                    if dia1 < dia2
                        println("-> La primera fecha es anterior.")
                    else
                        if dia1 > dia2
                            println("-> La segunda fecha es anterior.")
                        else
                            println("-> Ambas fechas son exactamente iguales.")
                        end
                    end
                end
            end
        end
    end
    
    println("--------------------------------------------------")
    
    intentos = intentos + 1
    
    # Solo pide otra fecha si no se ha alcanzado el límite aleatorio
    if intentos < maxInt
        println("Ingrese el DÍA de la siguiente primera fecha (Escriba 0 para salir):")
        dia1 = parse(Int, readline())
    end
end

# Intento final
if intentos >= maxInt
    println("Lo siento, se acabó sus intentos.")
else
    println("Programa finalizado exitosamente.")
end