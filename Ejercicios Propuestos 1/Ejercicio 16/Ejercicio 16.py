NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Un numero natural se domina perfecto cuando es igual a la suma de todos sus divisores, primos o no, excepto el mismo. por ejemplo; 28=1+2+4+7+14 escribir si un numero natural positivo es perfecto sí o no?

# Solicitamos un número al usuario
num = int(input("Número: "))

# Inicializamos la variable acumuladora
suma = 0

# Buscamos todos los divisores propios del número
for i in range(1, num):

    # Verificamos si i es divisor de num
    if num % i == 0:

        # Acumulamos el divisor encontrado
        suma += i

# Comparamos la suma de divisores con el número original
if suma == num:
    print("Es perfecto")
else:
    print("No es perfecto")