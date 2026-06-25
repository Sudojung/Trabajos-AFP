NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Rangos de las tablas
inicio = int(input("¿Desde qué tabla desea iniciar? "))
fin = int(input("¿Hasta qué tabla desea llegar? "))

# Límite de la multiplicación
tope = int(input("¿Hasta qué número desea multiplicar en cada tabla? "))

print("--------------------------------------------------")

# Proceso de generar las tablas
for i in range(inicio, fin + 1):

    print("=========================")
    print(f"TABLA DEL {i}")
    print("=========================")

    # Proceso de las multiplicaciones
    for j in range(1, tope + 1):
        resultado = i * j
        print(f"{i} x {j} = {resultado}")

    print()