NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Diseñe un diagrama que acepte un número escrito del 1 al 20 en cifras arábigas y lo visualice en números romanos.

# Solicitamos un número entero entre 1 y 20
num = int(input("Número (1-20): "))

# Diccionario que almacena la equivalencia entre números arábigos y romanos
romanos = {
    1:"I",2:"II",3:"III",4:"IV",5:"V",
    6:"VI",7:"VII",8:"VIII",9:"IX",10:"X",
    11:"XI",12:"XII",13:"XIII",14:"XIV",15:"XV",
    16:"XVI",17:"XVII",18:"XVIII",19:"XIX",20:"XX"
}

# Mostramos el equivalente en números romanos. Si el número no está entre 1 y 20, se muestra "Fuera de rango"
print("Romano:", romanos.get(num, "Fuera de rango"))