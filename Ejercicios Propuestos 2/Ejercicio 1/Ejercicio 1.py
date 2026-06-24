NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Bucle de validación hasta que se ingrese un número válido
while True:
    limite = int(input("Ingrese un número entero positivo (mayor o igual a 1): "))

    # Si el número es incorrecto, se muestra error
    if limite < 1:
        print("¡Error! El número ingresado no es válido.")
        print("Por favor, intente de nuevo con un número positivo.")
        print("--------------------------------------------------")
    else:
        break

factorial = 1

print("--------------------------------------------------")
print(f"Los factoriales hasta el {limite} son:")

# Para calcular e imprimir
for i in range(1, limite + 1):
    factorial *= i
    print(f"El factorial de {i} es: {factorial}")