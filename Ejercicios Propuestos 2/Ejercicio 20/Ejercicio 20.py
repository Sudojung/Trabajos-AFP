NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Validación de entrada
while True:

    numero = int(input("Ingrese un número decimal positivo: "))

    if numero < 0:
        print("Error: Debe ingresar un número positivo.")
    else:
        break

binario = ""

# Caso especial para el cero
if numero == 0:

    binario = "0"

else:

    # Convertimos el número a binario
    while numero > 0:

        residuo = numero % 2
        binario = str(residuo) + binario
        numero //= 2

print(f"El número en binario es: {binario}")