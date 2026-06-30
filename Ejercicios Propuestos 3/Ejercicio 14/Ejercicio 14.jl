function OrdenarVector(vector, n)
    for i in 1:(n - 1)
        for j in 1:(n - i)
            if vector[j] > vector[j+1]
                aux = vector[j]
                vector[j] = vector[j+1]
                vector[j+1] = aux
            end
        end
    end
end

function ImprimirVector(vector, n)
    for i in 1:n
        print(vector[i], " ")
    end
    println()
end



println("Ingrese la cantidad de elementos del vector:")
n = parse(Int, readline())


mis_numeros = zeros(Int, n)

for i in 1:n
    # Se imprime (i - 1) para que el texto inicie pidiendo la "posición 0"
    println("Ingrese el valor para la posición ", i - 1, ":")
    mis_numeros[i] = parse(Int, readline())
end

println("Vector original:")
ImprimirVector(mis_numeros, n)

OrdenarVector(mis_numeros, n)

println("Vector ordenado:")
ImprimirVector(mis_numeros, n)
