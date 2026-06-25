NAME = "Renzo Leonardo Cienfuegos Cardenas"
GROUP = 2

dia1 = int(input("Ingrese el DÍA de la primera fecha (Escriba 0 para salir): "))

# El ciclo se repite MIENTRAS el día 1 no sea cero
while dia1 != 0:

    # Como el día no es 0, terminamos de pedir la primera fecha
    mes1 = int(input("Ingrese el MES de la primera fecha: "))
    año1 = int(input("Ingrese el AÑO de la primera fecha: "))

    # Pedimos la segunda fecha completa
    print("--- Segunda Fecha ---")
    dia2 = int(input("Ingrese el DÍA de la segunda fecha: "))
    mes2 = int(input("Ingrese el MES de la segunda fecha: "))
    año2 = int(input("Ingrese el AÑO de la segunda fecha: "))

    print("--------------------------------------------------")

    # Comparación de mayor a menor
    if año1 < año2:
        print(f"-> La primera fecha ({dia1}/{mes1}/{año1}) es anterior.")

    else:
        if año1 > año2:
            print(f"-> La segunda fecha ({dia2}/{mes2}/{año2}) es anterior.")

        else:
            # Si los años son iguales. Comparamos los meses
            if mes1 < mes2:
                print("-> La primera fecha es anterior.")

            else:
                if mes1 > mes2:
                    print("-> La segunda fecha es anterior.")

                else:
                    # Si los años y meses son iguales. Comparamos los días
                    if dia1 < dia2:
                        print("-> La primera fecha es anterior.")

                    else:
                        if dia1 > dia2:
                            print("-> La segunda fecha es anterior.")

                        else:
                            print("-> Ambas fechas son exactamente iguales.")

    print("--------------------------------------------------")

    # Volvemos a pedir el primer día para decidir si continúa el ciclo
    dia1 = int(input("Ingrese el DÍA de la siguiente primera fecha (Escriba 0 para salir): "))

print("Programa finalizado exitosamente.")