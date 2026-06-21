NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# El siguiente programa genera un número aleatorio comprendido entre 1 y el valor de la constante MAXIMO y posteriormente reta al usuario a que lo adivine. Para ello utiliza la función "random" que genera un número aleatorio x donde 0 ≤ x < 1.

# Importamos la librería random para generar números aleatorios
import random

# Generamos un número aleatorio entre 1 y 100
numero_secreto = random.randint(1, 100)

# Inicializamos el contador de intentos
contador = 0

# Variable donde se almacenará cada intento del usuario
intento = 0

# Mostramos mensaje de bienvenida
print("¡Bienvenido al juego de adivinar el número!")

# Repetimos mientras el usuario no adivine el número
while intento != numero_secreto:

    # Solicitamos un intento al usuario
    intento = int(input("Ingresa tu intento (entre 1 y 100): "))

    # Incrementamos el contador de intentos
    contador += 1
    
    # Verificamos si el intento es mayor que el número secreto
    if intento > numero_secreto:
        print("El número es menor")

    # Verificamos si el intento es menor que el número secreto
    elif intento < numero_secreto:
        print("El número es mayor")

    # Si no es mayor ni menor, entonces acertó
    else:
        print("¡Acertaste!")

# Mostramos la cantidad total de intentos realizados
print(f"Número de intentos: {contador}")