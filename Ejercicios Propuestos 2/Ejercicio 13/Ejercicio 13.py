NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Creamos dos variables acumuladoras
suma_pares = 0
suma_impares = 0

# Recorremos los números del 1 al 200
for i in range(1, 201):

    # Verificamos si el número es par
    if i % 2 == 0:

        # Acumulamos el número en la suma de pares
        suma_pares += i

    else:

        # Acumulamos el número en la suma de impares
        suma_impares += i

# Mostramos los resultados obtenidos
print(f"La suma de los números pares entre 1 y 200 es: {suma_pares}")
print(f"La suma de los números impares entre 1 y 200 es: {suma_impares}")