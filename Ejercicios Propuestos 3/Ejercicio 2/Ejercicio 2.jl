suma = 0.0

print("Ingrese la cantidad de notas a registrar: ")
cantidad = parse(Int, readline())

vectorNotas = Vector{Float64}(undef, cantidad)

println("Ingrese las notas una por una:")

#  i = 0 Hasta (cantidad-1) 
for i in 0:(cantidad - 1)
    print("Ingrese la nota para la posición ", i, ": ")
    
    vectorNotas[i + 1] = parse(Float64, readline())
    
    global suma = suma + vectorNotas[i + 1]
end

promedio = suma / cantidad

println("El promedio de las notas es: ", promedio)