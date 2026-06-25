# Invertir un número entero

num = int(input("Ingrese un número entero: "))

invertido = 0

# Verificamos si el número es negativo
es_negativo = num < 0

# Trabajamos con el valor absoluto
if es_negativo:
    num = num * (-1)

while num > 0:
    resto = num % 10
    invertido = (invertido * 10) + resto
    num = num // 10

# Restauramos el signo si era negativo
if es_negativo:
    invertido = invertido * (-1)

print("El número invertido es:", invertido)