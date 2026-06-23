Algoritmo sueldo_empleados

    Definir contador, NumEmpleados Como Entero
    Definir ptas_hora, horas_trabajadas, salario, FactorExtra, horas_extras Como Real

    FactorExtra <- 1.5

    Escribir "Ingrese la cantidad total de empleados que tiene la empresa:"
    Leer NumEmpleados

    Escribir "Ingrese el pago por hora ordinaria:"
    Leer ptas_hora

    Para contador <- 1 Hasta NumEmpleados Hacer

        Escribir "Empleado número ", contador

        Escribir "Ingrese las horas trabajadas:"
        Leer horas_trabajadas

        Si horas_trabajadas <= 40 Entonces

            salario <- horas_trabajadas * ptas_hora

        Sino

            horas_extras <- horas_trabajadas - 40

            salario <- (40 * ptas_hora) + (horas_extras * ptas_hora * FactorExtra)

        FinSi

        Escribir "El salario del empleado ", contador, " es: ", salario
        Escribir "----------------------------------------"

    Fin Para

FinAlgoritmo
