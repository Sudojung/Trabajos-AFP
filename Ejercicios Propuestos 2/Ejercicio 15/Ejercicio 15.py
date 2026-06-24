NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitamos los extremos del primer intervalo
a = float(input("Ingrese el extremo inferior del primer intervalo (a): "))
b = float(input("Ingrese el extremo superior del primer intervalo (b): "))

# Solicitamos los extremos del segundo intervalo
c = float(input("Ingrese el extremo inferior del segundo intervalo (c): "))
d = float(input("Ingrese el extremo superior del segundo intervalo (d): "))

# Determinamos el inicio de la intersección
if a > c:
    inicio = a
else:
    inicio = c

# Determinamos el final de la intersección
if b < d:
    fin = b
else:
    fin = d

# Verificamos si existe intersección
if inicio <= fin:

    # Mostramos el intervalo de intersección
    print(f"La intersección es: [{inicio}, {fin}]")

else:

    # Informamos que no existe intersección
    print("Los intervalos no tienen intersección.")