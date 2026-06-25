println("Ingrese el número cifrado (entero de 4 dígitos):")
numCif = parse(Int, readline())

# Extraer los dígitos del número cifrado
d1 = div(numCif, 1000)
d2 = div(numCif % 1000, 100)
d3 = div(numCif % 100, 10)
d4 = numCif % 10

# Revertimos los intercambios de posición
# Deshacemos 1ro con 3ro
temp = d1
d1 = d3
d3 = temp

# Deshacemos 2do con 4to
temp = d2
d2 = d4
d4 = temp

# Revertir sumando 3 
d1 = (d1 + 3) % 10
d2 = (d2 + 3) % 10
d3 = (d3 + 3) % 10
d4 = (d4 + 3) % 10

println("El dato original revelado es: ", d1, d2, d3, d4)
