print("Ingrese un numero entero positivo para multiplicar por 11: ")
N_original = parse(Int, readline())

if N_original >= 0
    N = N_original
    resultado = 0
    posicion = 1
    lleva = 0
    digito_anterior = 0
    
    while N > 0 || digito_anterior > 0 || lleva > 0
        digito_actual = N % 10
        suma = digito_actual + digito_anterior + lleva
        nuevo_digito = suma % 10
        global lleva = div(suma, 10)
        global resultado = resultado + (nuevo_digito * posicion)
        global posicion *= 10
        global digito_anterior = digito_actual
        global N = div(N, 10)
    end
    println("El producto de ", N_original, " x 11 es: ", resultado)
else
    println("Error: El numero ingresado debe ser positivo.")
end

print("comprobacion: ", N_original, " * 11 = ", N_original * 11)
