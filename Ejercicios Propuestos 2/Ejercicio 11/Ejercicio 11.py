NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Cantidad total de puntos a evaluar
cant = int(input("¿Cuántos puntos desea evaluar? "))

# Contador de puntos que caen en las áreas
dentro = 0

# Leemos y evaluamos cada punto
for i in range(1, cant + 1):

    print(f"--- Punto {i} ---")

    a = float(input("Ingrese coordenada X: "))
    b = float(input("Ingrese coordenada Y: "))

    # Calculamos la posición del punto respecto a cada centro
    dist_c1 = (a - 5) ** 2 + (b - 4) ** 2
    dist_c2 = (a + 5) ** 2 + (b - 4) ** 2

    # Evaluamos si está dentro de C1 o dentro de C2
    if dist_c1 <= 4 or dist_c2 <= 9:

        print("  -> ¡El punto está dentro!")
        dentro += 1

    else:

        print("  -> El punto está fuera.")

print("--------------------------------------------------")
print(f"Total de puntos dentro de las circunferencias: {dentro}")