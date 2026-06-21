NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Traduzca un número binario introducido desde el teclado, al sistema hexadecimal (base 16) de forma directa, es decir sin convertir el número binario al sistema decimal.

# Variable para verificar si la entrada es un número binario válido
esBinario = False

# Solicitamos el número binario hasta que sea válido
while not esBinario:

    binario = input("Ingrese un número binario (solo 0 y 1): ")

    esBinario = True

    # Verificamos que todos los caracteres sean 0 o 1
    for j in range(len(binario)):

        if binario[j] != "0" and binario[j] != "1":
            esBinario = False
            break

    if not esBinario:
        print("Error: El texto introducido no es un numero binario.")

# Completamos con ceros a la izquierda hasta tener grupos de 4 bits
while len(binario) % 4 != 0:
    binario = "0" + binario

# Variable donde almacenaremos el resultado hexadecimal
hex_resultado = ""

# Recorremos el número binario en bloques de 4 bits
for i in range(0, len(binario), 4):

    bloque = binario[i:i+4]

    # Convertimos cada bloque binario a hexadecimal
    if bloque == "0000": digitoHex = "0"
    elif bloque == "0001": digitoHex = "1"
    elif bloque == "0010": digitoHex = "2"
    elif bloque == "0011": digitoHex = "3"
    elif bloque == "0100": digitoHex = "4"
    elif bloque == "0101": digitoHex = "5"
    elif bloque == "0110": digitoHex = "6"
    elif bloque == "0111": digitoHex = "7"
    elif bloque == "1000": digitoHex = "8"
    elif bloque == "1001": digitoHex = "9"
    elif bloque == "1010": digitoHex = "A"
    elif bloque == "1011": digitoHex = "B"
    elif bloque == "1100": digitoHex = "C"
    elif bloque == "1101": digitoHex = "D"
    elif bloque == "1110": digitoHex = "E"
    elif bloque == "1111": digitoHex = "F"

    # Agregamos el dígito hexadecimal al resultado final
    hex_resultado = hex_resultado + digitoHex

# Mostramos el resultado final
print(f"El número en Hexadecimal (base 16) es: {hex_resultado}")