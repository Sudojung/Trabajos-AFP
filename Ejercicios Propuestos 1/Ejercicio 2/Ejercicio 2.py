NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Dado un número entero, visualiza por pantalla la suma de todos los números pares desde 1 hasta ese número, la suma de todos los números impares desde 1 hasta ese número y la suma de todos los múltiplos de 5 desde 1 hasta ese número.

# Creamos 3 variables para almacenar las sumas
suma_pares = 0
suma_impares = 0
suma_multp5 = 0

# Solicitamos un número entero al usuario
n = int(input("Ingrese un número entero (mayor que 1): "))

# Verificamos que el número ingresado sea válido
while n <= 1:
    print("ERROR: El número debe ser estrictamente mayor que 1.")
    n = int(input("Por favor, intente de nuevo: "))

# Recorremos todos los números desde 1 hasta n
for i in range(1, n + 1):

    # Determinamos si el número es par o impar
    if i % 2 == 0:
        suma_pares += i
    else:
        suma_impares += i

    # Verificamos si el número es múltiplo de 5
    if i % 5 == 0:
        suma_multp5 += i

# Mostramos en pantalla los resultados obtenidos
print(f"La suma de números pares entre 1 y {n} es: {suma_pares}")
print(f"La suma de números impares entre 1 y {n} es: {suma_impares}")
print(f"La suma de números múltiplos de 5 entre 1 y {n} es: {suma_multp5}")