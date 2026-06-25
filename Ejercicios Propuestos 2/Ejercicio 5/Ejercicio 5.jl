# Función para sacar el Máximo Común Divisor
function SacarMCD(a, b)
    while b != 0
        temp = b
        b = a % b
        a = temp
    end
    maxDiv = a
    return maxDiv
end

# Algoritmo Fracciones - Inicio del flujo principal

# Los datos
println("Fracción 1 - Numerador:")
num1 = parse(Int, readline())
println("Fracción 1 - Denominador:")
den1 = parse(Int, readline())

println("Fracción 2 - Numerador:")
num2 = parse(Int, readline())
println("Fracción 2 - Denominador:")
den2 = parse(Int, readline())

if den1 == 0 || den2 == 0
    println("Error: El denominador no puede ser cero.")
else
    # Simplificamos ambas fracciones antes de operar
    mcd = SacarMCD(num1, den1)
    num1 = div(num1, mcd)
    den1 = div(den1, mcd)
    
    mcd = SacarMCD(num2, den2)
    num2 = div(num2, mcd)
    den2 = div(den2, mcd)
    
    println("Fracciones listas para operar: ", num1, "/", den1, " y ", num2, "/", den2)
    
    # Hacemos la SUMA
    numSuma = (num1 * den2) + (num2 * den1)
    denSuma = den1 * den2
    
    # Simplificamos la suma
    mcd = SacarMCD(numSuma, denSuma)
    numSuma = div(numSuma, mcd)
    denSuma = div(denSuma, mcd)
    
    # Hacemos el PRODUCTO
    numProd = num1 * num2
    denProd = den1 * den2
    
    # Simplificamos el producto
    mcd = SacarMCD(numProd, denProd)
    numProd = div(numProd, mcd)
    denProd = div(denProd, mcd)
    
    # Resultados
    println("Resultado de la SUMA: ", numSuma, "/", denSuma)
    println("Resultado del PRODUCTO: ", numProd, "/", denProd)
end