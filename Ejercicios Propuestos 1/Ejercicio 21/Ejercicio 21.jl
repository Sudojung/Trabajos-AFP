print("Ingrese el valor maximo hasta el que desea llegar: ")
maximo_valor = parse(Int, readline())

if maximo_valor > 0
    numero_actual = 1
    fila = 1
    while numero_actual <= maximo_valor
        for columna in 1:fila
            if numero_actual <= maximo_valor
                print(numero_actual, " ")
                global numero_actual += 1
            end
        end
        println()
        global fila += 1
    end
else
    println("Error: El valor debe ser mayor a cero.")
end
