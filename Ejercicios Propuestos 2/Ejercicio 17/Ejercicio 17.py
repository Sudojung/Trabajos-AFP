NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitamos los coeficientes de la función
a = float(input("Ingrese el valor de a: "))
b = float(input("Ingrese el valor de b: "))
c = float(input("Ingrese el valor de c: "))
d = float(input("Ingrese el valor de d: "))

# Recorremos los valores de x desde 8 hasta 100
for x in range(8, 101):

    # Calculamos el valor de la función para el valor actual de x
    fx = (a * x**4) - (b * x**3) + (2 * c * x**2) - x + d

    # Mostramos el resultado obtenido
    print(f"f({x}) = {fx}")