NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Escriba un programa que calcule de forma aproximada el seno de un ángulo comprendido entre el valor del ángulo se leerá desde la entrada estándar, y se comprobará que se encuentra entre los límites fijados.

# Solicitamos el ángulo en radianes
angulo = float(input("Ingrese el ángulo en radianes (entre -3.1416 y 3.1416): "))

# Verificamos que el ángulo esté dentro del rango permitido
if angulo < -3.1416 or angulo > 3.1416:
    print("Error: Ángulo fuera del rango permitido.")

else:
    # Inicializamos la suma acumulada con el primer término de la serie
    seno_acumulado = angulo

    # Guardamos el primer término
    termino = angulo

    # Variable para alternar el signo de cada término
    signo = 1

    # Variable para calcular el factorial
    factorial = 1
    
    # Calculamos los siguientes términos de la serie de Taylor
    for i in range(1, 5):

        # Alternamos el signo: negativo, positivo, negativo...
        signo = signo * (-1)

        # Calculamos el exponente impar correspondiente
        exponente = 2 * i + 1

        # Calculamos el factorial correspondiente
        factorial = factorial * (2 * i) * (2 * i + 1)

        # Calculamos el término actual
        termino = (angulo ** exponente) / factorial

        # Acumulamos el término con su signo correspondiente
        seno_acumulado = seno_acumulado + (signo * termino)
        
    # Mostramos el resultado final
    print(f"Seno aproximado de ({angulo}) = {seno_acumulado}")