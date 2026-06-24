print("Ingrese la cantidad de numeros a calcular (Valor de P): ")
limite_P = parse(Int, readline())

if limite_P > 0
    println("Num | Cuadrado | Cubo | Raiz Cuadrada")
    println("---------------------------------------")
    for numero_actual in 1:limite_P
        cuadrado = numero_actual * numero_actual
        cubo = numero_actual * numero_actual * numero_actual
        raiz_cuadrada = sqrt(numero_actual)
        println(numero_actual, "   | ", cuadrado, "       | ", cubo, "    | ", raiz_cuadrada)
    end
else
    println("Error: La cantidad P debe ser un número mayor a cero.")
end
