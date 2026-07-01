NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitar la cantidad de elementos del vector
cantidad = int(input("Ingrese la cantidad de elementos que tendrá el vector: "))

# Crear una lista vacía para almacenar los números
vector_numeros = []

# Variable que acumulará la suma de los elementos
suma = 0

# Lectura de elementos y cálculo de la suma
print("Ingrese los números enteros uno por uno:")

# Inicia en 0 y termina en cantidad - 1
for i in range(cantidad):
    # Solicitar el valor para cada posición
    numero = int(input(f"Valor para la posición {i}: "))
    
    # Agregar el número al vector
    vector_numeros.append(numero)
    
    # Acumular la suma
    suma += numero

# Resultado final
print("La suma total de los elementos del vector es:", suma)
