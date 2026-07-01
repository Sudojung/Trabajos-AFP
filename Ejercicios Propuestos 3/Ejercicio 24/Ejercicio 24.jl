function puntosCalidad(promedio)
    
    puntos = 0
    
    # Le quitamos los decimales al promedio para que encaje en los rangos 
    promedio = trunc(promedio)
    
    if promedio >= 90 && promedio <= 100
        puntos = 4
    end
    
    if promedio >= 80 && promedio <= 89
        puntos = 3
    end
    
    if promedio >= 70 && promedio <= 79
        puntos = 2
    end
    
    if promedio >= 60 && promedio <= 69
        puntos = 1
    end
    
    if promedio < 60
        puntos = 0
    end
    
    return puntos
end

suma = 0.0

println("--- Calculadora de Puntos de Calidad ---")

# para pedir las 4 notas
for i in 1:4
    print("Ingrese la nota ", i, " (0 - 100): ")
    nota = parse(Float64, readline())
    # AJUSTE: Usamos global para aclarar el alcance de la variable externa
    global suma = suma + nota
end

# Calculamos el promedio
promedioEstudiante = suma / 4

# Aplicacion de la función
resultado = puntosCalidad(promedioEstudiante)

println("----------------------")
println("Promedio calculado: ", promedioEstudiante)
println("Puntos de calidad: ", resultado)