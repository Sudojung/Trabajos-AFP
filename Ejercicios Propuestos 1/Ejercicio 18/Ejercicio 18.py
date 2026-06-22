NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Escribir un algoritmo que saque en cada línea el cuadrado, el cubo y la raíz cuadrada de los P primeros números naturales. (Considerar predefinida una función "RzCuadrada(num)").

# Importamos la librería math para utilizar la función sqrt()
import math

# Solicitamos la cantidad de números naturales a procesar
P = int(input("Ingrese P: "))

# Recorremos los números desde 1 hasta P
for i in range(1, P + 1):

   # Calculamos el cuadrado del número
   cuadrado = i ** 2

   # Calculamos el cubo del número
   cubo = i ** 3

   # Calculamos la raíz cuadrada del número
   raiz = math.sqrt(i)

   # Mostramos los resultados obtenidos
   print(i, "|", cuadrado, "|", cubo, "|", raiz)