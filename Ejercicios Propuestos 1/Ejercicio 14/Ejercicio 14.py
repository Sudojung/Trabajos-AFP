NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Escribir un algoritmo que lea una secuencia de números positivos acabada en 0 y encuentre el menor, el mayor y el promedio de los números leídos.

# Inicializamos las variables acumuladoras
suma = 0
cantidad = 0

# Solicitamos el primer número
num = int(input("Ingrese números enteros positivos (Escriba 0 para terminar): "))

# Continuamos mientras el usuario no ingrese 0
while num != 0:

    # Verificamos que el número sea positivo
    if num < 0:
        print("Error: Solo se permiten números positivos.")

    else:

        # Acumulamos la suma de los números válidos
        suma = suma + num

        # Contamos la cantidad de números válidos
        cantidad = cantidad + 1

        # Inicializamos menor y mayor con el primer número válido
        if cantidad == 1:
            menor = num
            mayor = num

        else:

            # Actualizamos el menor número encontrado
            if num < menor:
                menor = num

            # Actualizamos el mayor número encontrado
            if num > mayor:
                mayor = num

    # Solicitamos el siguiente número
    num = int(input())

# Verificamos que se hayan ingresado números válidos
if cantidad > 0:

    # Calculamos el promedio
    promedio = suma / cantidad

    # Mostramos los resultados
    print(f"El número MENOR es: {menor}")
    print(f"El número MAYOR es: {mayor}")
    print(f"El PROMEDIO es: {promedio}")

else:
    print("No se ingresaron números válidos.")