NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Leemos los dos números
primero = int(input("Ingrese el primer número: "))
segundo = int(input("Ingrese el segundo número: "))

# Calculamos el MCD mediante restas sucesivas
while primero != segundo:

    if primero > segundo:

        primero -= segundo

    else:

        segundo -= primero

# Mostramos el resultado
print(f"El máximo común divisor es: {primero}")