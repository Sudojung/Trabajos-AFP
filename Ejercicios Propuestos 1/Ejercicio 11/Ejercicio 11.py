NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Una empresa fabrica dos productos A y B y desea saber cuál de ellos es el más aceptado en el mercado. Para ello realiza una encuesta y, por cada persona interrogada se obtiene un par de valores: el primer valor del par indica la aceptación o no del producto A según sea 1 o 0; el segundo valor del par corresponde al producto B. Por ejemplo, el par (1,0) significa que el encuestado acepta el producto A pero no el B. Se pide: 
# - Total de encuestados 
# - Porcentaje de consumidores que aceptan: 
# - El producto A 
# - El producto B 
# - Los dos productos 
# - El producto A pero no el B 
# - El producto B pero no el A 
# - Ninguno de los dos productos.

# Solicitamos la cantidad total de encuestados
total = int(input("Número de encuestados: "))

# Inicializamos los contadores
A = B = ambos = soloA = soloB = ninguno = 0

# Recorremos todos los encuestados
for _ in range(total):

    # Solicitamos la respuesta para cada producto
    a = int(input("Acepta A (1/0): "))
    b = int(input("Acepta B (1/0): "))

    # Contamos los que aceptan el producto A
    if a == 1:
        A += 1

    # Contamos los que aceptan el producto B
    if b == 1:
        B += 1

    # Clasificamos las respuestas
    if a == 1 and b == 1:
        ambos += 1

    elif a == 1:
        soloA += 1

    elif b == 1:
        soloB += 1

    else:
        ninguno += 1

# Mostramos los resultados en porcentaje
print("Total:", total)
print("A:", A / total * 100, "%")
print("B:", B / total * 100, "%")
print("Ambos:", ambos / total * 100, "%")
print("Solo A:", soloA / total * 100, "%")
print("Solo B:", soloB / total * 100, "%")
print("Ninguno:", ninguno / total * 100, "%")