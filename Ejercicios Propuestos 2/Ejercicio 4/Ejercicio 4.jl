contador = 0

println("Ingrese la cantidad de números en la secuencia:")
n = parse(Int, readline())

for i in 1:1:n
    global contador
    
    println("Ingrese el número ", i, ":")
    numero = readline()
    
    tam = length(numero)
    mitad = div(tam, 2)
    
    if tam % 2 == 0
        # Caso par
        primera = numero[1:mitad]
        segunda = numero[(mitad + 1):tam]
    else
        # Caso impar: se ignora el dígito del medio
        primera = numero[1:mitad]
        segunda = numero[(mitad + 2):tam]
    end
    
    if primera == segunda
        contador = contador + 1
        println(numero, " : SI es número gemelo ")
    else
        println(numero, " : NO es número gemelo ")
    end
end

println("Cantidad total de números gemelos en la secuencia: ", contador)