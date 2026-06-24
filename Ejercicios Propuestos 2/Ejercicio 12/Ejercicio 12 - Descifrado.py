NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitamos el número cifrado
numero = input("Ingrese el número cifrado: ")

# Arreglo para almacenar los dígitos
digitos = [0] * 4

# Restauramos el orden original
digitos[0] = int(numero[2])
digitos[1] = int(numero[3])
digitos[2] = int(numero[0])
digitos[3] = int(numero[1])

# Recuperamos los dígitos originales
for i in range(4):
    digitos[i] = (digitos[i] + 3) % 10

# Formamos el número original
original = f"{digitos[0]}{digitos[1]}{digitos[2]}{digitos[3]}"

# Mostramos el resultado
print(f"Número original: {original}")
