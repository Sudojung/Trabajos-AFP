NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Escriba un programa que muestre la serie de Fibonacci para los valores comprendidos entre n y m.

# Solicitamos el límite inferior
n = int(input("Ingrese el valor de n (límite inferior): "))

# Solicitamos el límite superior
m = int(input("Ingrese el valor de m (límite superior): "))

# Inicializamos los dos primeros términos de Fibonacci
a = 0
b = 1

# Generamos la serie mientras no se supere el límite superior
while a <= m:

    # Verificamos si el término pertenece al intervalo [n,m]
    if a >= n:
        print(a)

    # Calculamos el siguiente término de la serie
    siguiente = a + b

    # Actualizamos los valores para continuar la secuencia
    a = b
    b = siguiente