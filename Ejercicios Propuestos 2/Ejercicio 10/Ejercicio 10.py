NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Bucle que se repite y muestra error si no es natural
while True:
    n = int(input("Introduzca un entero positivo: "))

    # Si se escribe un número menor a 1 sale el error
    if n < 1:
        print("¡Error! Debe ingresar un número natural.")
    else:
        break

factorial = 1
i = 1

while i <= n:
    factorial *= i
    i += 1

print(f"El factorial de {n} es: {factorial}")