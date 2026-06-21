NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Escriba un programa que muestre la suma de los 20 primeros múltiplos de 3.

# Recordemos que en el input reemplazamos: 
# num = 3

# Se crea una variable acumuladora llamada suma
suma = 0

# Solicitamos un número entero al usuario
num = int(input("Introduce el número del cual quieres la suma de sus múltiplos: "))

# Recorremos los números del 1 al 20
for i in range(1, 21):

    # Calculamos el múltiplo correspondiente
    multiplo = i * num

    # Acumulamos el múltiplo en la suma total
    suma += multiplo

# Mostramos el resultado final en pantalla
print(f"La suma de los 20 primeros múltiplos de {num} es: {suma}")