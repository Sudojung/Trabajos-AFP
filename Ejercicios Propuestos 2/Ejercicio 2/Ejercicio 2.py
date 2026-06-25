NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Solicitamos los datos
base = float(input("Ingrese la base (número real): "))
num = int(input("Ingrese el numerador del exponente: "))
den = int(input("Ingrese el denominador del exponente: "))

# Calculamos base^num
potencia = 1

for i in range(num):
    potencia *= base

# Calculamos la raíz den-ésima de potencia
raiz = potencia / den   # Valor inicial aproximado

# 50 iteraciones para mejorar la precisión
for i in range(50):
    raiz = ((den - 1) * raiz + (potencia / (raiz ** (den - 1)))) / den

resultado = raiz

# Mostramos el resultado
print(f"El resultado de {base} elevado a {num}/{den} es: {resultado}")