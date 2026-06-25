NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitamos un número de 4 dígitos
num = int(input("Ingrese el dato original (entero de 4 dígitos): "))

# Extraer los dígitos
d1 = num // 1000
d2 = (num % 1000) // 100
d3 = (num % 100) // 10
d4 = num % 10

# Sustituir cada dígito por (dígito + 7) % 10
d1 = (d1 + 7) % 10
d2 = (d2 + 7) % 10
d3 = (d3 + 7) % 10
d4 = (d4 + 7) % 10

# Intercambiar el 1.º con el 3.º
temp = d1
d1 = d3
d3 = temp

# Intercambiar el 2.º con el 4.º
temp = d2
d2 = d4
d4 = temp

# Mostrar resultado
print("El número cifrado seguro es:", end=" ")
print(d1, d2, d3, d4, sep="")
