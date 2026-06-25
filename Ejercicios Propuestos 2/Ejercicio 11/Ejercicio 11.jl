# Cantidad total de puntos a evaluar
println("¿Cuántos puntos desea evaluar?")
cant = parse(Int, readline())

dentro = 0 # Contador de puntos que caen en las áreas

# Para leer y evaluar cada punto
for i in 1:cant
    global dentro
    
    println("--- Punto ", i, " ---")
    println("Ingrese coordenada X:")
    a = parse(Float64, readline())
    println("Ingrese coordenada Y:")
    b = parse(Float64, readline())
    
    # Calculamos la posición del punto respecto a cada centro
    distC1 = (a - 5)^2 + (b - 4)^2
    distC2 = (a + 5)^2 + (b - 4)^2
    
    # Evaluamos si está dentro de c1 O dentro de c2
    if distC1 <= 4 || distC2 <= 9
        println("  -> ¡El punto está dentro!")
        dentro = dentro + 1
    else
        println("  -> El punto está fuera.")
    end
end

println("--------------------------------------------------")
println("Total de puntos dentro de las circunferencias: ", dentro)