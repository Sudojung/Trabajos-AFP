NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Generar la tabla para "N" varía entre 1.0 y 1.1 con incremento de 0.001. la tabla:
# N      | N²   | N^0,5
# -------+------+-------
# 99     | 9999 | 999

# Mostramos el encabezado de la tabla
print(" N | N^2 | N^0.5 ")
print("-----------------------------")

# Recorremos los valores desde 1.0 hasta 1.1
for i in range(0, 101):

    # Calculamos el valor de N
    N = 1.0 + (i * 0.001)

    # Calculamos el cuadrado de N
    cuadrado = N * N

    # Calculamos la raíz cuadrada de N
    potencia_raiz = N ** 0.5

    # Mostramos los resultados formateados
    print(f"{N:.3f} | {cuadrado:.6f} | {potencia_raiz:.6f}")