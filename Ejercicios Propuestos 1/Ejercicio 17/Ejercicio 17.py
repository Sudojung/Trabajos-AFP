NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

# Escribir un algoritmo que calcule y saque por pantalla los salarios de todos los empleados de una empresa. Cada empleado se identificará por un número desde el 1 hasta el total de empleados en la empresa. El salario es función de las horas trabajadas, que serán distintas para cada trabajador y se introducirán por teclado. El algoritmo aceptará también por teclado la cantidad que la empresa paga por hora ordinaria. Cuando un trabajador trabaje más de 40 horas, la empresa pagará las horas extras a 1.5 veces la hora ordinaria. Sugerencia: usar las variables "ptas_hora", "horas_trabajadas", "salario", "contador", y las constantes "NumEmpleados=50" y "FactorExtra=1’5".

# Factor multiplicador para las horas extras
FactorExtra = 1.5

# Solicitamos la cantidad total de empleados
NumEmpleados = int(input("Ingrese la cantidad total de empleados que tiene la empresa: "))

# Solicitamos el pago por hora ordinaria
ptas_hora = float(input("Ingrese el pago por hora ordinaria: "))

# Recorremos todos los empleados
for contador in range(1, NumEmpleados + 1):

    print(f"Empleado número {contador}")

    # Solicitamos las horas trabajadas
    horas_trabajadas = float(input("Ingrese las horas trabajadas: "))

    # Si trabajó hasta 40 horas, no existen horas extras
    if horas_trabajadas <= 40:

        salario = horas_trabajadas * ptas_hora

    else:

        # Calculamos las horas extras trabajadas
        horas_extras = horas_trabajadas - 40

        # Calculamos el salario considerando horas extras
        salario = (40 * ptas_hora) + (horas_extras * ptas_hora * FactorExtra)

    # Mostramos el salario calculado
    print(f"El salario del empleado {contador} es: {salario}")

    print("------------------------------------------------")