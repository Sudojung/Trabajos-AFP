NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

import math

def calcular_seno(x, n):
    suma = x
    termino = x
    signo = -1

    # Calculamos los términos siguientes
    for i in range(1, n):
        termino = termino * (x * x) / ((2 * i) * (2 * i + 1))
        suma = suma + (signo * termino)
        signo = -signo  # (+, -, +, -)

    return suma


def main():
    n = 10  # Es lo que nos solicitan
    angulo = 0
    limite = 2 * math.pi
    paso_angulo = math.pi / 8

    print("Ángulo (rad) | Tangente")
    print("------------------------")

    # Se suma un pequeño margen para evitar errores de precisión
    while angulo <= limite + 0.0001:
        sen_x = calcular_seno(angulo, n)

        # Calculamos el coseno usando la identidad trigonométrica
        cos_x = math.sqrt(abs(1 - (sen_x * sen_x)))

        # Ajuste del signo del coseno
        if angulo > (math.pi / 2) and angulo < (3 * math.pi / 2):
            cos_x = -cos_x

        # Evitar división por cero
        if abs(cos_x) < 0.00001:
            print(f"{angulo:.4f} | infinito")
        else:
            tan_x = sen_x / cos_x
            print(f"{angulo:.4f} | {tan_x:.6f}")

        angulo += paso_angulo


if __name__ == "__main__":
    main()