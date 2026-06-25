NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Función para determinar si un número es primo
def verificar_primo(num):
    es_primo = True

    # El 0 y el 1 no son números primos
    if num <= 1:
        es_primo = False
    else:
        # Dividimos el número por todos los anteriores para ver si tiene divisores
        for i in range(2, num):
            if num % i == 0:
                es_primo = False

    return es_primo


def main():
    numero_ingresado = int(input("Ingrese un número natural primo: "))

    # Validamos que el usuario realmente ingresó un número primo
    if not verificar_primo(numero_ingresado):
        print("Error: El número ingresado no es primo. Intente con 2, 3, 5, 13, etc.")
    else:
        a = 1
        b = 1

        # Generamos la secuencia de Fibonacci hasta alcanzar o pasarnos del número
        while b < numero_ingresado:
            c = a + b
            a = b
            b = c

        # Si al detenernos 'b' es igual al número ingresado, pertenece a Fibonacci
        if b == numero_ingresado:
            siguiente = a + b
            print("¡Enhorabuena mi kin, hallaste un número Fibonacci!")
            print(f"La terna es: {a}, {b}, {siguiente}")
        else:
            print(f"El número {numero_ingresado} es primo, pero NO es un número Fibonacci.")


if __name__ == "__main__":
    main()