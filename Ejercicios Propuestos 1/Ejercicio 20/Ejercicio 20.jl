print("Ingrese la posicion del numero triangular (valor de n): ")
posicion_n = parse(Int, readline())

if posicion_n > 0
    num_triangular = 0
    for contador in 1:posicion_n
        global num_triangular += contador
    end
    println("El número triangular en la posicion ", posicion_n, " es: ", num_triangular)
else
    println("Error: Debe ingresar una posicion valida (entero positivo).")
end
