NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Descifrar datos de un número de 4 dígitos
numCif = int(input("Ingrese el número cifrado (entero de 4 dígitos): "))

# Extraer los dígitos
d1 = numCif // 1000
d2 = (numCif % 1000) // 100
d3 = (numCif % 100) // 10
d4 = numCif % 10

# Revertir los intercambios
# Deshacer intercambio del 1.º con el 3.º
temp = d1
d1 = d3
d3 = temp

# Deshacer intercambio del 2.º con el 4.º
temp = d2
d2 = d4
d4 = temp

# Revertir la transformación (sumar 3 equivale a restar 7 módulo 10)
d1 = (d1 + 3) % 10
d2 = (d2 + 3) % 10
d3 = (d3 + 3) % 10
d4 = (d4 + 3) % 10

# Mostrar resultado
print("El dato original revelado es:", end=" ")
print(d1, d2, d3, d4, sep="")
