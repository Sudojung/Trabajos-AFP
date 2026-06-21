NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Realizar un algoritmo que muestre por pantalla la tabla de multiplicar del 3 y del 9.

# Recordemos que en el input reemplazamos: 
# num1 = 3  
# num2 = 9

num1 = int(input("Ingresa el primer número para su tabla: ")) # Pedimos el primer número
num2 = int(input("Ingresa el segundo número para su tabla: ")) # Pedimos el segundo número

print(f"TABLA DEL {num1} (Del 1 al 10)") # Encabezado de la primera tabla
for i in range(1, 11):
    resultado1 = num1 * i #Multiplicamos num1 x i
    print(f"{num1} x {i} = {resultado1}") #Se muestra el resultado

print("")
print(f"TABLA DEL {num2} (Del 1 al 10)") # Encabezado de la segunda tabla
for i in range(1, 11):
    resultado2 = num2 * i #Multiplicamos num2 x i
    print(f"{num2} x {i} = {resultado2}") #Se muestra el resultado