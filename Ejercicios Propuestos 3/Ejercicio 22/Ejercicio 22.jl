function CalcularMCD(num1, num2)
    
    # Convertimos a positivos en caso de que ingresen números negativos
    if num1 < 0
        num1 = num1 * (-1)
    end
    if num2 < 0
        num2 = num2 * (-1)
    end
    
    while num2 != 0
        # Calculamos el residuo de la división
        resto = num1 % num2
        
        # Desplazamos los valores: num1 toma el valor de num2, y num2 toma el residuo
        num1 = num2
        num2 = resto
    end
    
    # Cuando num2 llega a 0, el num1 contiene el MCD
    resultado = num1
    return resultado
end



print("Ingrese el primer número entero: ")
a = parse(Int, readline())
print("Ingrese el segundo número entero: ")
b = parse(Int, readline())

# Llamada a la función
mcd = CalcularMCD(a, b)

println("----------------------")
println("El Máximo Común Divisor (MCD) de ", a, " y ", b, " es: ", mcd)